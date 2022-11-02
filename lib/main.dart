import 'dart:async';

import 'package:flutter/material.dart';
import 'package:heal_and_go/Out/register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Register());
  }
}
