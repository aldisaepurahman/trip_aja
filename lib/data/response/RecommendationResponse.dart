import 'package:heal_and_go/data/response/DefaultResponse.dart';
import 'package:heal_and_go/data/response/RecommendationDataItem.dart';

class RecommendationResponse extends DefaultResponse {
  RecommendationDataItem data;

  RecommendationResponse({required super.code, required super.success, required super.message, required this.data});
}