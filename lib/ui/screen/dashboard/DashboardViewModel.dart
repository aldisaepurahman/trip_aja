import 'package:flutter/foundation.dart';
import 'package:heal_and_go/data/repository/main_repository.dart';
import 'package:heal_and_go/data/response/RecommendationDataItem.dart';
import 'package:heal_and_go/data/response/Users.dart';
import 'package:heal_and_go/data/result.dart';
import 'package:supabase/supabase.dart';

class DashboardViewModel with ChangeNotifier {
  Result<List<RecommendationDataItem>> destinations_discover = Result.loading();
  Result<List<RecommendationDataItem>> top_destination = Result.loading();

  list_destinations(Result<List<RecommendationDataItem>> response) {
    destinations_discover = response;
    notifyListeners();
  }

  destinations(Result<List<RecommendationDataItem>> response) {
    top_destination = response;
    notifyListeners();
  }

  Future<void> getAllDestinations(SupabaseClient client) async {
    final MainRepository repository = MainRepository(supabaseClient: client);
    await repository.getAllDestinations().then((value) {
      destinations(Result.success(value.datastore));
    }).onError((error, stackTrace) {
      destinations(Result.error(error.toString()));
    });
  }

  Future<void> discover(
      SupabaseClient client, String keyword, String category) async {
    final MainRepository repository = MainRepository(supabaseClient: client);
    await repository.discover(keyword, category).then((value) {
      list_destinations(Result.success(value.datastore));
    }).onError((error, stackTrace) {
      list_destinations(Result.error(error.toString()));
    });
  }
}
