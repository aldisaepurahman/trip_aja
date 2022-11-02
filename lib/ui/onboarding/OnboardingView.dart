import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnboardingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            )
          )
        ],
      ),
    );
  }
}
