import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:heal_and_go/data/response/RecommendationDataItem.dart';
import 'package:heal_and_go/ui/Navigations.dart';
import 'package:heal_and_go/ui/components/DestinationCard.dart';
import 'package:heal_and_go/utils/SwipeRequest.dart';
import 'package:lottie/lottie.dart';
import 'package:swipable_stack/swipable_stack.dart';

final recommendationItem = [
  RecommendationDataItem(
      id: '001',
      name: 'Malioboro',
      category: 'Pasar',
      location: 'Yogyakarta',
      description:
          'Jalan Malioboro adalah nama salah satu kawasan jalan dari tiga jalan di Kota Yogyakarta yang membentang dari Tugu Yogyakarta hingga ke perempatan Kantor Pos Yogyakarta. Secara keseluruhan terdiri atas Jalan Margo Utomo, Jalan Malioboro, dan Jalan Margo Mulyo. Jalan ini merupakan poros Garis Imajiner Kraton Yogyakarta',
      image:
          'https://img.inews.co.id/media/822/files/inews_new/2021/06/21/pedagang_malioboro.jpg'),
  RecommendationDataItem(
      id: '002',
      name: 'Pantai Pangandaran',
      category: 'Pantai',
      location: 'Jawa Barat',
      description:
          'Pantai Pangandaran merupakan sebuah objek wisata andalan Kabupaten Pangandaran yang terletak di sebelah tenggara Jawa Barat, tepatnya di Desa Pangandaran dan Pananjung, sekitar 222 km dari selatan Bandung, Kecamatan Pangandaran, Kabupaten Pangandaran, Provinsi Jawa Barat.',
      image:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Pantai_Pangandaran.jpg/1200px-Pantai_Pangandaran.jpg'),
  RecommendationDataItem(
      id: '003',
      name: 'Dufan',
      category: 'Taman',
      location: 'Jakarta',
      description:
          'Dufan atau disebut juga Dunia Fantasi adalah sebuah theme park yang terletak di kawasan Taman Impian Jaya Ancol, Jakarta Utara, Indonesia yang diresmikan dan dibuka untuk umum pada tanggal 29 Agustus 1985',
      image:
          'https://www.ancol.com/shared/images/606bc34a-097b-4b33-8fcb-92247a25b2bd.jpg'),
  RecommendationDataItem(
      id: '004',
      name: 'TMII',
      category: 'Taman',
      location: 'Jakarta',
      description:
          'Taman Mini Indonesia Indah merupakan suatu kawasan taman wisata bertema budaya Indonesia di Jakarta Timur. Area seluas kurang lebih 150 hektare atau 1,5 kilometer persegi ini terletak pada koordinat 6°18′6.8″LS,106°53′47.2″BT.',
      image:
          'https://jadwaltravel.com/wp-content/uploads/2019/11/https___www.instagram.com_p_BhOPpmAnqj7_.jpg'),
  RecommendationDataItem(
      id: '005',
      name: 'Taman Safari Bogor',
      category: 'Taman',
      location: 'Jawa Barat',
      description:
          'Taman Safari Indonesia adalah tempat wisata keluarga berwawasan lingkungan yang berorientasi pada habitat satwa di alam bebas. Taman Safari Indonesia terletak di Desa Cibeureum Kecamatan Cisarua, Kabupaten Bogor, Jawa Barat atau yang lebih dikenal dengan kawasan Puncak.',
      image:
          'https://pinhome-blog-assets-public.s3.amazonaws.com/2021/08/taman-safari-bogor-hotel-1.jpg')
];

class Recommendation extends StatefulWidget {
  const Recommendation({super.key});

  @override
  State<Recommendation> createState() => _RecommendationState();
}

class _RecommendationState extends State<Recommendation> with TickerProviderStateMixin {
  late final SwipableStackController _controller;
  late final AnimationController _animationController;
  List<SwipeRequest> swipeRequest = [];
  bool finished = false;

  void _listenController() => setState(() {});

  setAnimationsChecked() async {
    var duration = const Duration(seconds: 2);
    return Timer(duration, () {
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const Navigations()));
    });
  }

  @override
  void initState() {
    super.initState();
    _controller = SwipableStackController()..addListener(_listenController);
    _animationController = AnimationController(vsync: this, duration: const Duration(milliseconds: 1000));
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
                bottom: 0.0,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: AnimatedOpacity(
                    opacity: finished ? 1.0 : 0.0,
                    duration: const Duration(milliseconds: 500),
                    child: Lottie.asset(
                        "images/check.json",
                        controller: _animationController,
                        repeat: false,
                        animate: true,
                        reverse: false
                    ),
                  ),
                )
            ),
            Positioned(
                top: 0.0,
                left: 0.0,
                right: 0.0,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: AnimatedOpacity(
                    opacity: finished ? 0.0 : 1.0,
                    duration: Duration(milliseconds: finished ? 250 : 500),
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
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.help_outline,
                                  color: Colors.white))
                        ],
                      ),
                    )
                  ),
                )),
            Positioned.fill(
                top: MediaQuery.of(context).size.height / 2 * 0.2,
                left: MediaQuery.of(context).size.width / 2 * 0.3,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: AnimatedOpacity(
                      opacity: finished ? 0.0 : 1.0,
                      duration: Duration(milliseconds: finished ? 250 : 500),
                      child: SwipableStack(
                        itemCount: recommendationItem.length,
                        detectableSwipeDirections: const {
                          SwipeDirection.right,
                          SwipeDirection.left
                        },
                        controller: _controller,
                        stackClipBehaviour: Clip.none,
                        horizontalSwipeThreshold: 0.8,
                        onSwipeCompleted: (index, direction) {
                          swipeRequest.add(SwipeRequest(
                              id: recommendationItem[swipeRequest.length].id,
                              interested: (direction == SwipeDirection.right)
                                  ? true
                                  : false));

                          Fluttertoast.showToast(
                              msg: (direction == SwipeDirection.right)
                                  ? "You choose 'interested' for this recommendation"
                                  : "You choose 'not interested' for this recommendation",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.BOTTOM,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.black,
                              textColor: Colors.white,
                              fontSize: 12.0);

                          if (swipeRequest.length == 5) {
                            finished = !finished;
                            _animationController.forward();
                            setAnimationsChecked();
                          }
                        },
                        builder: (context, properties) {
                          final itemIndex =
                              properties.index % recommendationItem.length;

                          return Stack(
                            children: [
                              DestinationCard(
                                destinationinfo: recommendationItem[itemIndex],
                                height: 400,
                                onDoubleTap: () {
                                  _controller.next(
                                      swipeDirection: SwipeDirection.right);
                                },
                              )
                            ],
                          );
                        },
                      )
                  ),
                )),
            Positioned(
                bottom: 0.0,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: AnimatedOpacity(
                      opacity: finished ? 0.0 : 1.0,
                      duration: Duration(milliseconds: finished ? 250 : 500),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          generateButton(
                              "Not Interesed",
                              const Icon(
                                Icons.close,
                                color: Color(0xffe04958),
                                size: 35,
                              ), () {
                            _controller.next(swipeDirection: SwipeDirection.left);
                          }),
                          generateButton(
                              "Rewind",
                              const Icon(
                                Icons.undo,
                                color: Color(0xff5f5fff),
                                size: 35,
                              ), () {
                            swipeRequest.removeLast();
                            _controller.rewind();
                          }),
                          generateButton(
                              "Interesed",
                              const Icon(
                                Icons.favorite_outline,
                                color: Color(0xff309365),
                                size: 35,
                              ), () {
                            _controller.next(swipeDirection: SwipeDirection.right);
                          })
                        ],
                      )
                  ),
                ))
          ],
        )),
      ),
    );
  }

  Padding generateButton(
      String description, Icon iconType, VoidCallback onPressed) {
    return Padding(
      padding: const EdgeInsets.all(21.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          RawMaterialButton(
            onPressed: onPressed,
            elevation: 2,
            fillColor: Colors.white,
            padding: const EdgeInsets.all(15.0),
            shape: const CircleBorder(),
            child: iconType,
          ),
          const SizedBox(height: 8),
          Text(
            description,
            style: const TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 11),
          )
        ],
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
