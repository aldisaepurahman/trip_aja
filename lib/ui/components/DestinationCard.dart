import 'package:flutter/material.dart';
import 'package:heal_and_go/data/response/RecommendationDataItem.dart';

class DestinationCard extends StatelessWidget {
  final RecommendationDataItem destinationinfo;
  final double height;
  VoidCallback? onDoubleTap;
  VoidCallback? onLongPress;
  VoidCallback? onTap;

  DestinationCard(
      {Key? key,
      required this.destinationinfo,
      required this.height,
      this.onDoubleTap,
      this.onLongPress,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      onDoubleTap: onDoubleTap,
      onLongPress: onLongPress,
      child: Container(
        width: 250,
        height: height,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                  destinationinfo.image,
                ),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(10)),
        alignment: Alignment.bottomCenter,
        padding: const EdgeInsets.only(bottom: 10),
        child: Container(
          width: 230,
          height: 50,
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0.0, 5.0),
                    blurRadius: 10.0)
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                destinationinfo.name,
                style: const TextStyle(
                    fontFamily: "poppins",
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                destinationinfo.location,
                style: const TextStyle(
                  fontSize: 9,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
