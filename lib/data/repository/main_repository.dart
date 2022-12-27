import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:heal_and_go/data/response/RecommendationDataItem.dart';
import 'package:heal_and_go/data/response/Users.dart';
import 'package:heal_and_go/data/system_status.dart';
import 'package:heal_and_go/utils/DestinationInfo.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class MainRepository {
  MainRepository({required SupabaseClient supabaseClient})
      : _supabaseClient = supabaseClient;

  final SupabaseClient _supabaseClient;
  final Dio _dio = Dio();
  final _baseUrl = "https://rec-app-new-lrb7bxhriq-et.a.run.app";

  Future<SystemStatus<Users>> signIn(String email, String password) async {
    try {
      final response = await _supabaseClient
          .from("HealGo_Users")
          .select()
          .eq("email", email)
          .eq("password", password)
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
    }
  }

  Future<SystemStatus<List<RecommendationDataItem>>> discover(String keyword, String category) async {
    try {
      final response = destinationinfo.where((dest) => dest.category.contains(category) && dest.name.toLowerCase().contains(keyword.toLowerCase())).toList();
      return SystemStatus(datastore: response);
    } on NoSuchMethodError catch (error) {
      return SystemStatus(
          datastore: List<RecommendationDataItem>.from([]), message: error.stackTrace.toString());
    }
  }

  Future<SystemStatus<List<RecommendationDataItem>>> getAllDestinations() async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      final List<String> response = List<String>.from(prefs.getStringList("final_result")!);
      List<RecommendationDataItem> recommend = <RecommendationDataItem>[];

      if (response.isNotEmpty) {
        for (var item in response) {
          recommend.add(RecommendationDataItem.fromJson(jsonDecode(item)));
        }
      } else {
        recommend.addAll(recommendations);
      }
      
      return SystemStatus(datastore: recommend);
    } on NoSuchMethodError catch (error) {
      return SystemStatus(
          datastore: List<RecommendationDataItem>.from([]), message: error.stackTrace.toString());
    }
  }

  Future<SystemStatus<List<String>>> sendQuestionnaire(Map<String, dynamic> req) async {
    try {
      final response = await _dio.post(
          "$_baseUrl/questionnaire",
          data: req
      );

      if (response == null) {
        return SystemStatus(
            datastore: <String>[], message: response.toString());
      }

      return SystemStatus(datastore: List<String>.from(response.data["destinations"]));
    } catch (error, stackTrace) {
      return SystemStatus(datastore: <String>[], message: Error.throwWithStackTrace(error, stackTrace));
    }
  }

  Future<SystemStatus<String>> sendRecommendations(Map<String, dynamic> req) async {
    try {
      final response = await _dio.post(
          "$_baseUrl/rec_item",
          data: req
      );

      if (response == null) {
        return SystemStatus(
            datastore: "", message: response.toString());
      }

      return SystemStatus(datastore: response.data);
    } catch (error, stackTrace) {
      return SystemStatus(datastore: "", message: Error.throwWithStackTrace(error, stackTrace));
    }
  }
}