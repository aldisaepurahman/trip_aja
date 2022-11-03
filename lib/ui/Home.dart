import 'package:flutter/material.dart';
import 'package:heal_and_go/components/DestinationCard.dart';
import 'package:heal_and_go/components/Jumbotron.dart';
import 'package:heal_and_go/components/NavigationBar.dart';
import 'package:heal_and_go/info/DestinationInfo.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  HomeState createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {

  @override
  void dispose() {

  }

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
                    fontSize: 16,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
              Container(
                height: 400,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Expanded (
                  child: Padding (
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return DestinationCard(destinationinfo: destinationinfo[index]);
                      },
                      separatorBuilder: (context, index) {
                        return Divider();
                      },
                      itemCount: destinationinfo.length,
                    ),
                  ),
                ),
              ),
              MyNavigationBar()
            ],
          ),
        ),
      )
    );
  }
}