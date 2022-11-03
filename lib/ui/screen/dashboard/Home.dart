import 'package:flutter/material.dart';
import 'package:heal_and_go/ui/screen/dashboard/DestinationDetail.dart';
import 'package:heal_and_go/ui/components/DestinationCard.dart';
import 'package:heal_and_go/ui/components/Jumbotron.dart';
import 'package:heal_and_go/utils/DestinationInfo.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  HomeState createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Jumbotron(),
              const Padding(
                padding: EdgeInsets.only(left: 40.0, right: 40),
                child: Text(
                  "Top Pick Destination For You",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontFamily: "poppins",
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
              Container(
                  height: 400,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return DestinationCard(
                          destinationinfo: destinationinfo[index],
                          height: 300,
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return DestinationDetail(
                                destinationInfo: destinationinfo[index],
                              );
                            } ));
                          });
                      },
                      separatorBuilder: (context, index) {
                        return const Divider();
                      },
                      itemCount: destinationinfo.length,
                    ),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}