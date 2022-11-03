import 'package:flutter/material.dart';
import 'package:heal_and_go/components/NavigationBar.dart';
import 'package:heal_and_go/dashboard/profil.dart';
import 'package:heal_and_go/ui/Home.dart';

class Navigations extends StatefulWidget {
  const Navigations({Key? key}) : super(key: key);

  @override
  State<Navigations> createState() => _NavigationState();
}

class _NavigationState extends State<Navigations> {

  Widget _screen = const Home();

  void changeScreen(int index) {
    setState((){

      switch (index) {
        case 0:
          _screen = const Home();
          break;

        case 1:
          _screen = const Profil();
          break;

        case 2:
          _screen = const Profil();
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screen,
      bottomNavigationBar: MyNavigationBar(callback: changeScreen),
    );
  }
}