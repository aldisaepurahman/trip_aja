import 'package:heal_and_go/data/response/DestinationItem.dart';

class RecommendationDataItem extends DestinationItem {
  String id;

  RecommendationDataItem(
      {required this.id,
      required super.image,
      required super.name,
      required super.category,
      required super.description,
      required super.location});
}
