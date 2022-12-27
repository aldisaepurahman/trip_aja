import 'package:flutter/foundation.dart';
import 'package:heal_and_go/data/repository/main_repository.dart';
import 'package:heal_and_go/data/response/QuestionnaireReq.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supabase/supabase.dart';

class QuestionnaireViewModel with ChangeNotifier {
  List<String> recommendationsList = <String>[];

  allRecommendations(List<String> response) {
    recommendationsList.clear();
    recommendationsList = response;
    _bindToLocal(recommendationsList);
    notifyListeners();
  }

  void _bindToLocal(List<String> response) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove("recommend");
    prefs.setStringList("recommend", response);
  }

  Future<void> sendQuestionnaire(SupabaseClient client, QuestionnaireReq request) async {
    final MainRepository repository = MainRepository(supabaseClient: client);
    await repository.sendQuestionnaire(request.toJson()).then((value) {
      allRecommendations(value.datastore);
    }).onError((error, stackTrace) {
      allRecommendations([]);
    });
  }
}
