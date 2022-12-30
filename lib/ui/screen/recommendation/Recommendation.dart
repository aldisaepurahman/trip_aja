import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:heal_and_go/data/response/RecommendationDataItem.dart';
import 'package:heal_and_go/data/response/Users.dart';
import 'package:heal_and_go/ui/Navigations.dart';
import 'package:heal_and_go/ui/components/DestinationCard.dart';
import 'package:heal_and_go/ui/components/Dialog.dart';
import 'package:heal_and_go/ui/screen/recommendation/RecommendationViewModel.dart';
import 'package:heal_and_go/utils/DestinationInfo.dart';
import 'package:heal_and_go/ui/components/Color.dart';
import 'package:heal_and_go/utils/SwipeRequest.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
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
  const Recommendation({super.key, required this.client});

  final SupabaseClient client;

  @override
  State<Recommendation> createState() => _RecommendationState();
}

class _RecommendationState extends State<Recommendation>
    with TickerProviderStateMixin {
  late final SwipableStackController _controller;
  late final AnimationController _animationController;
  List<SwipeRequest> swipeRequest = [];
  List<RecommendationDataItem> recommendationList = <RecommendationDataItem>[];
  bool finished = false;
  bool isLoading = true;
  RecommendationViewModel recommendationViewModel = RecommendationViewModel();

  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  void _listenController() => setState(() {});

  setAnimationsChecked() async {
    var duration = const Duration(seconds: 2);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => Navigations(client: widget.client)));
    });
  }

  void bindToLocal() async {
    final SharedPreferences prefs = await _prefs;
    List<String> stored = <String>[];

    if (swipeRequest.isNotEmpty) {
      for (var i = 0; i < 2; i++) {
        for (var j = 0; j < swipeRequest.length; j++) {
          if (i == 0 && swipeRequest[j].interested > 0) {
            stored.add(jsonEncode(recommendationList[j]));
          } else if (i == 1 && swipeRequest[j].interested < 0) {
            stored.add(jsonEncode(recommendationList[j]));
          }
        }
      }
    } else {
      if (recommendationList.isNotEmpty) {
        for (var j = 0; j < recommendationList.length; j++) {
          stored.add(jsonEncode(recommendationList[j]));
        }
      } else {
        stored.addAll(recommendations.map((e) => jsonEncode(e)));
      }
    }

    final String user = prefs.getString("user") ?? "";
    Users datauser = Users.fromJson(jsonDecode(user));

    prefs.setStringList("final_result_${datauser.full_name}", stored);
  }

  void sendRecommendation() {
    bindToLocal();
    recommendationViewModel.sendRecommendation(
        widget.client, {"data": swipeRequest.map((e) => e.toJson())});
  }

  void getRecommendationFromLocal() async {
    final SharedPreferences prefs = await _prefs;
    final List<String> recommend =
        List<String>.from(prefs.getStringList("recommend") ?? []);

    setState(() {
      if (recommend.isNotEmpty) {
        for (var item in recommend) {
          int idx =
              destinationinfo.indexWhere((dest) => dest.name.contains(item));
          print(item);
          recommendationList.add(destinationinfo[idx]);
        }
      } else {
        recommendationList.addAll(recommendations);
      }
    });
  }

  void backWarningDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogDoubleButton(
          title: "Hey! Stop right there",
          content:
              "Do you really want to do this? Just a reminder your answer will be lost if you go back!",
          path_image: "assets/images/caution.json",
          buttonLeft: "No",
          buttonRight: "Yes",
          onPressedButtonLeft: () {
            Navigator.of(context).pop();
          },
          onPressedButtonRight: () {
            bindToLocal();
            Future.delayed(const Duration(seconds: 2), () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => Navigations(client: widget.client)));
            });
          },
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    _controller = SwipableStackController()..addListener(_listenController);
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1000));
    getRecommendationFromLocal();
    Timer(Duration(seconds: 2), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blue,
      body: ChangeNotifierProvider<RecommendationViewModel>(
        create: (context) => recommendationViewModel,
        child: WillPopScope(
          child: Center(
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
                        child: Lottie.asset("assets/images/check_blue.json",
                            controller: _animationController,
                            repeat: true,
                            animate: true,
                            reverse: false),
                      ),
                    )),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    AnimatedOpacity(
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
                                  onPressed: () {
                                    Fluttertoast.showToast(
                                        msg:
                                            "This feature is not implemented yet.",
                                        toastLength: Toast.LENGTH_SHORT,
                                        gravity: ToastGravity.BOTTOM,
                                        timeInSecForIosWeb: 1,
                                        backgroundColor: Colors.black,
                                        textColor: Colors.white,
                                        fontSize: 12.0);
                                  },
                                  icon: const Icon(Icons.help_outline,
                                      color: Colors.white))
                            ],
                          ),
                        )),
                    if (isLoading) ...[
                      Container(
                          height: MediaQuery.of(context).size.height * 0.7,
                          alignment: Alignment.center,
                          child: const CircularProgressIndicator()),
                    ] else ...[
                      AnimatedOpacity(
                          opacity: finished ? 0.0 : 1.0,
                          duration:
                              Duration(milliseconds: finished ? 250 : 500),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.7,
                            alignment: Alignment.center,
                            child: SwipableStack(
                              itemCount: recommendationList.length,
                              detectableSwipeDirections: const {
                                SwipeDirection.right,
                                SwipeDirection.left
                              },
                              controller: _controller,
                              stackClipBehaviour: Clip.none,
                              horizontalSwipeThreshold: 0.8,
                              onSwipeCompleted: (index, direction) {
                                swipeRequest.add(SwipeRequest(
                                    id: int.parse(recommendationList[
                                                swipeRequest.length]
                                            .id!) -
                                        1,
                                    interested:
                                        (direction == SwipeDirection.right)
                                            ? 0.8
                                            : -0.8));

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
                                  sendRecommendation();
                                  setAnimationsChecked();
                                }
                              },
                              builder: (context, properties) {
                                final itemIndex = properties.index %
                                    recommendationList.length;
                                return Stack(
                                  children: [
                                    Center(
                                      child: DestinationCard(
                                        destinationinfo:
                                            recommendationList[itemIndex],
                                        height: 400,
                                        onDoubleTap: () {
                                          _controller.next(
                                              swipeDirection:
                                                  SwipeDirection.right);
                                        },
                                        orientation: "horizontal",
                                        paddingSize: 0,
                                      ),
                                    )
                                  ],
                                );
                              },
                            ),
                          ))
                    ],
                    AnimatedOpacity(
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
                              if (!isLoading) {
                                _controller.next(
                                    swipeDirection: SwipeDirection.left);
                              }
                            }),
                            generateButton(
                                "Rewind",
                                const Icon(
                                  Icons.undo,
                                  color: Color(0xff5f5fff),
                                  size: 35,
                                ), () {
                              if (!isLoading) {
                                swipeRequest.removeLast();
                                _controller.rewind();
                              }
                            }),
                            generateButton(
                                "Interesed",
                                const Icon(
                                  Icons.favorite_outline,
                                  color: Color(0xff309365),
                                  size: 35,
                                ), () {
                              if (!isLoading) {
                                _controller.next(
                                    swipeDirection: SwipeDirection.right);
                              }
                            })
                          ],
                        ))
                  ],
                )
              ],
            )),
          ),
          onWillPop: () async {
            backWarningDialog();
            return false;
          },
        ),
      ),
    );
  }

  Padding generateButton(
      String description, Icon iconType, VoidCallback onPressed) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
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
