import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  double width;
  double height;
  String image;
  String name;
  String location;
  VoidCallback? onDoubleTap;
  VoidCallback? onLongPress;
  VoidCallback? onTap;

  CardItem(
      {super.key,
      required this.width,
      required this.height,
      required this.name,
      required this.image,
      required this.location,
      this.onDoubleTap,
      this.onLongPress,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onDoubleTap: onDoubleTap ?? () {},
      onLongPress: onLongPress ?? () {},
      onTap: onTap ?? () {},
      child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Column(
              children: [
                SizedBox(
                  width: double.maxFinite,
                  height: height-100,
                  child: Image.asset(
                    image,
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontFamily: "Poppins"),
                      ),
                      Text(
                        location,
                        style: const TextStyle(fontFamily: "Poppins"),
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
