import 'package:flutter/material.dart';

class Profil extends StatefulWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  ProfilState createState() {
    return ProfilState();
  }
}

class ProfilState extends State<Profil> {
  @override
  void dispose() {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Heal & Go', home: Scaffold(body: ListView()));
  }
}
