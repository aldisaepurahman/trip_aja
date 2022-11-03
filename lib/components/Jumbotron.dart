import 'package:flutter/material.dart';

class Jumbotron extends StatelessWidget {
  const Jumbotron({Key ? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 40, horizontal: 25),
        padding: EdgeInsets.only(top: 10, bottom: 10),
        width: double.infinity,
        height: 170,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.blue,
              Colors.pinkAccent,
            ]
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Feeling Stressed 🤔",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: "poppins",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none
              ),
            ),
            const Text(
              "Find The Best Place To Heal",
              style: TextStyle(
                color: Colors.white,
                fontFamily: "poppins",
                fontSize: 16,
                decoration: TextDecoration.none
              ),
            ),
            ElevatedButton(onPressed: () {

            },
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              onPrimary: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)
              ),
              elevation: 5.0,
              padding: EdgeInsets.symmetric( vertical: 12.5, horizontal: 25.0)
            ),
            child:
              const Text(
                "Get Started",
                style: TextStyle(
                  fontFamily: "poppins",
                  fontWeight: FontWeight.bold
                ),
              )
            )
          ],
          )
        ),
    );
  }

}