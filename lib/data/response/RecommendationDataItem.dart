import 'package:heal_and_go/data/response/DestinationItem.dart';

class RecommendationDataItem extends DestinationItem {
  String? id;

  RecommendationDataItem(
      {this.id = "",
      required super.image,
      required super.name,
      required super.category,
      required super.description,
      required super.location});

  RecommendationDataItem.fromJson(Map<String, dynamic> json) {
    id = json['code'];
    image = json['image'];
    name = json['name'];
    category = json['category'];
    description = json['description'];
    location = json['location'];
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "category": category,
      "location": location,
      "description": description,
      "image": image
    };
  }
}
