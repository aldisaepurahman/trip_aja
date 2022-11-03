import 'dart:async';

import 'package:flutter/material.dart';
import 'package:heal_and_go/ui/onboarding/OnboardingView.dart';
import 'package:heal_and_go/ui/questionnaire/Questionnaire.dart';
import 'package:heal_and_go/ui/recommendation/Recommendation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SplashScreen());
  }

}

class SplashScreen extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<SplashScreen> {

  startSplashScreen() async {
    var duration = const Duration(seconds: 2);
    return Timer(duration, () {
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Recommendation()));
    });
  }

  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Heal and Go",
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                "images/heal_and_go_logo.png",
                width: 200.0,
                height: 100.0,
                fit: BoxFit.contain,
              ),
            )
          ],
        ),
      ),
    );
  }
}