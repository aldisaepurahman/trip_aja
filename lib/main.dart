import 'dart:async';

import 'package:flutter/material.dart';
import 'package:heal_and_go/out/Login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Heal & Go - Demo",
        home: const Login());
  }

}