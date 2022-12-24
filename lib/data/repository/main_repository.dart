import 'package:heal_and_go/data/response/Users.dart';
import 'package:heal_and_go/data/system_status.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class MainRepository {
  const MainRepository({required SupabaseClient supabaseClient})
      : _supabaseClient = supabaseClient;

  final SupabaseClient _supabaseClient;

  Future<SystemStatus<Users>> signIn(String email, String password) async {
    try {
      final response = await _supabaseClient
          .from("HealGo_Users")
          .select()
          .eq("email", email)
          .eq("password", "password")
          .single();

      if (response == null) {
        return SystemStatus(
            datastore: Users(), message: response.toString());
      }

      return SystemStatus(datastore: Users.fromJson(response));
    } on PostgrestException catch (error) {
      return SystemStatus(datastore: Users(), message: error.toString());
    } on NoSuchMethodError catch (error) {
      return SystemStatus(
          datastore: Users(), message: error.stackTrace.toString());
    }
  }

  Future<SystemStatus<bool>> register(
      Map<String, dynamic> data_insert) async {
    try {
      await _supabaseClient.from("HealGo_Users").insert(data_insert);
      return SystemStatus(datastore: true);
    } catch (error, stackTrace) {
      return SystemStatus(datastore: false, message: Error.throwWithStackTrace(error, stackTrace));
      // Error.throwWithStackTrace(error, stackTrace);
    }
  }
}