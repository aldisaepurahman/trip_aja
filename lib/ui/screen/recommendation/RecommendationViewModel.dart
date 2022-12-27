import 'package:flutter/foundation.dart';
import 'package:heal_and_go/data/repository/main_repository.dart';
import 'package:supabase/supabase.dart';

class RecommendationViewModel with ChangeNotifier {
  String result = "";

  finalResult(String response) {
    result = response;
    notifyListeners();
  }

  Future<void> sendRecommendation(SupabaseClient client, Map<String, dynamic> request) async {
    final MainRepository repository = MainRepository(supabaseClient: client);
    await repository.sendRecommendations(request).then((value) {
      finalResult(value.datastore);
    }).onError((error, stackTrace) {
      finalResult("");
    });
  }
}
