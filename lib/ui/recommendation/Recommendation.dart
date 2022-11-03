import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:heal_and_go/data/response/RecommendationDataItem.dart';
import 'package:heal_and_go/ui/widget/CardItem.dart';
import 'package:swipable_stack/swipable_stack.dart';

final recommendationItem = [
  RecommendationDataItem(
      id: "1",
      image: "images/destination.jpg",
      name: "Pantai Pangandaran",
      description: "Pangandaran merupakan tempat wisata",
      location: "Ciamis"),
  RecommendationDataItem(
      id: "2",
      image: "images/destination.jpg",
      name: "Pantai Kuta",
      description: "Kuta merupakan tempat wisata",
      location: "Kuta, Bali"),
  RecommendationDataItem(
      id: "3",
      image: "images/destination.jpg",
      name: "Tangkuban Perahu",
      description: "Tangkuban Perahu wisata pegunungan",
      location: "Bandung"),
  RecommendationDataItem(
      id: "4",
      image: "images/destination.jpg",
      name: "Candi Borobudur",
      description: "Borobudur tempat wisata 7 keajaiban dunia",
      location: "Yogyakarta"),
  RecommendationDataItem(
      id: "5",
      image: "images/destination.jpg",
      name: "Pulau Komodo",
      description: "Satwa Komodo ada disini",
      location: "Lombok, NTB"),
];

class Recommendation extends StatefulWidget {
  const Recommendation({super.key});

  @override
  State<Recommendation> createState() => _RecommendationState();
}

class _RecommendationState extends State<Recommendation> {
  late final SwipableStackController _controller;

  void _listenController() => setState(() {});

  @override
  void initState() {
    super.initState();
    _controller = SwipableStackController()..addListener(_listenController);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff5f5fff),
      body: Center(
        child: SafeArea(
            child: Stack(
              children: [
                Positioned(
                    top: 0.0,
                    left: 0.0,
                    right: 0.0,
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: SizedBox(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const SizedBox(width: 50),
                            const Expanded(
                              flex: 2,
                                child: Center(
                                  child: Text(
                                    "Recommendation",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "Poppins",
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.help_outline, color: Colors.white)
                            )
                          ],
                        ),
                      ),
                    )
                ),
                Positioned.fill(
                  top: MediaQuery.of(context).size.height / 2 * 0.2,
                  left: MediaQuery.of(context).size.width / 2 * 0.3,
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: SwipableStack(
                        itemCount: recommendationItem.length,
                        detectableSwipeDirections: const {
                          SwipeDirection.right,
                          SwipeDirection.left
                        },
                        controller: _controller,
                        stackClipBehaviour: Clip.none,
                        horizontalSwipeThreshold: 0.8,
                        builder: (context, properties) {
                          final itemIndex =
                              properties.index % recommendationItem.length;

                          return Stack(
                            children: [
                              CardItem(
                                  width: 250,
                                  height: 400,
                                  name: recommendationItem[itemIndex].name,
                                  image: recommendationItem[itemIndex].image,
                                  location: recommendationItem[itemIndex].location,
                                onDoubleTap: () {
                                    _controller.next(swipeDirection: SwipeDirection.right);
                                },
                              )
                            ],
                          );
                        },
                      ),
                    )
                ),
                Positioned(
                  bottom: 0.0,
                    child: Padding(
                        padding: const EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                              padding: const EdgeInsets.all(21.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                RawMaterialButton(
                                  onPressed: () {
                                    _controller.next(swipeDirection: SwipeDirection.left);
                                  },
                                  elevation: 2,
                                  fillColor: Colors.white,
                                  padding: const EdgeInsets.all(15.0),
                                  shape: const CircleBorder(),
                                  child: const Icon(
                                    Icons.close,
                                    color: Color(0xffe04958),
                                    size: 35,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                const Text(
                                  "Not Interesed",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 11
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(21.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                RawMaterialButton(
                                  onPressed: () {
                                    _controller.rewind();
                                  },
                                  elevation: 2,
                                  fillColor: Colors.white,
                                  padding: const EdgeInsets.all(15.0),
                                  shape: const CircleBorder(),
                                  child: const Icon(
                                    Icons.undo,
                                    color: Color(0xff5f5fff),
                                    size: 35,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                const Text(
                                  "Rewind",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 11
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(21.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                RawMaterialButton(
                                  onPressed: () {
                                    _controller.next(swipeDirection: SwipeDirection.right);
                                  },
                                  elevation: 2,
                                  fillColor: Colors.white,
                                  padding: const EdgeInsets.all(15.0),
                                  shape: const CircleBorder(),
                                  child: const Icon(
                                    Icons.favorite_outline,
                                    color: Color(0xff309365),
                                    size: 35,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                const Text(
                                  "Interesed",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 11
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                )
              ],
            )),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller
      ..removeListener(_listenController)
      ..dispose();
  }
}
