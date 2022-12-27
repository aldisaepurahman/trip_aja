import 'package:flutter/foundation.dart';
import 'package:heal_and_go/data/repository/main_repository.dart';
import 'package:heal_and_go/data/response/Users.dart';
import 'package:heal_and_go/data/result.dart';
import 'package:supabase/supabase.dart';

class AuthViewModel with ChangeNotifier {
  Result<Users> users_data = Result.loading();
  Result<bool> register_status = Result.loading();

  login(Result<Users> response) {
    users_data = response;
    notifyListeners();
  }

  register(Result<bool> response) {
    register_status = response;
    notifyListeners();
  }

  Future<void> signIn(
      SupabaseClient client, String email, String password) async {
    final MainRepository repository = MainRepository(supabaseClient: client);
    await repository.signIn(email, password).then((value) {
      login(Result.success(value.datastore));
    }).onError((error, stackTrace) {
      login(Result.error(error.toString()));
    });
  }

  Future<void> signup(
      SupabaseClient client, Users user) async {
    final MainRepository repository = MainRepository(supabaseClient: client);
    await repository.register(user.toJson()).then((value) {
      register(Result.success(value.datastore));
    }).onError((error, stackTrace) {
      register(Result.error(error.toString()));
    });
  }
}
