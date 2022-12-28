import 'package:flutter/material.dart';
import 'package:heal_and_go/data/response/RecommendationDataItem.dart';

class DestinationCard extends StatelessWidget {
  final RecommendationDataItem destinationinfo;
  final double height;
  final double scale;
  VoidCallback? onDoubleTap;
  VoidCallback? onLongPress;
  VoidCallback? onTap;
  final double paddingSize;
  final String orientation;

  DestinationCard(
      {Key? key,
        required this.destinationinfo,
        required this.height,
        this.scale = 1,
        this.onDoubleTap,
        this.onLongPress,
        this.onTap,
        required this.paddingSize,
        required this.orientation,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: (orientation != "vertical" ? EdgeInsets.only(right: paddingSize) : EdgeInsets.only(right: 25, bottom: 15)),
      child: InkWell(
        onTap: onTap,
        onDoubleTap: onDoubleTap,
        onLongPress: onLongPress,
        child: Container(
          width: 250,
          height: height,
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
            width: 230 * scale,
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
                Expanded(
                  child: Text(
                    destinationinfo.name,
                    style: const TextStyle(
                        fontFamily: "poppins",
                        fontSize: 11,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                    child: Text(
                      destinationinfo.location,
                      style: const TextStyle(
                        fontSize: 9,
                      ),
                    )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}