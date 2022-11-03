import 'package:flutter/material.dart';
import 'package:heal_and_go/ui/screen/dashboard/DestinationDetail.dart';
import 'package:heal_and_go/ui/components/DestinationCard.dart';
import 'package:heal_and_go/utils/DestinationInfo.dart';
import 'package:heal_and_go/ui/components/MultiSelectChip.dart';

class Discover extends StatefulWidget {
  const Discover({Key? key}) : super(key: key);

  @override
  DiscoverState createState() {
    return DiscoverState();
  }
}

class DiscoverState extends State<Discover> {
  List<String> filterList = [
    'All',
    'Beach',
    'Mountain',
    'Park',
    'Temple',
    'City',
    'Desert'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.only(right: 30, left: 30, top: 40),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 20),
                  width: double.infinity,
                  child: const Text(
                    'Let\'s Go',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 36,
                      fontFamily: 'poppins',
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Flexible(
                  child: TextField(
                    textAlignVertical: TextAlignVertical.bottom,
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none),
                        hintText: 'Search',
                        hintStyle: const TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          fontFamily: 'poppins',
                        ),
                        prefixIcon: const SizedBox(
                          width: 18,
                          child: Icon(Icons.search),
                        )),
                  ),
                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: MultiSelectChip(filterList),
                ),
                const SizedBox(height: 10),
                Expanded(
                  flex: 10,
                  child: GridView.builder(
                    gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.8,
                    ),
                    itemBuilder: (context, index) {
                      return DestinationCard(
                        destinationinfo: destinationinfo[index],
                        height: 300,
                        scale: 0.8,
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return DestinationDetail(
                              destinationInfo: destinationinfo[index],
                            );
                          } ));
                        },
                      );
                    },
                    itemCount: destinationinfo.length,
                  ),
                ),
              ],
            )));
  }
}
