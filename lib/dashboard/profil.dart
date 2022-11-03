import 'package:flutter/material.dart';
import 'package:heal_and_go/components/profil_button.dart';
import 'package:heal_and_go/components/NavigationBar.dart';

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

  String nama = "Chris Hemsworth";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Heal & Go',
        home: Scaffold(
            body: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(top: 25, bottom: 35),
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text("Profile",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontFamily: "poppins",
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 27, 28, 30))),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    margin: EdgeInsets.only(left: 20),
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: const DecorationImage(
                            image: AssetImage("images/profil.jpg")))),
                Container(
                    child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(nama,
                      style: const TextStyle(
                          fontFamily: "poppins",
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 27, 28, 30))),
                )),
                IconButton(onPressed: () {}, icon: const Icon(Icons.edit))
              ],
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 35, vertical: 50),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                        margin: EdgeInsets.only(bottom: 20),
                        child: const Text(
                          "Information",
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        )),
                    Profil_Button(ikon: Icons.menu_book, menu: "FAQ"),
                    Profil_Button(ikon: Icons.star, menu: "Rate Us"),
                    Container(
                        margin: EdgeInsets.only(bottom: 20, top: 20),
                        child: const Text(
                          "Preference",
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        )),
                    Profil_Button(ikon: Icons.language, menu: "Language"),
                    Profil_Button(
                        ikon: Icons.logout, color: Colors.red, menu: "Logout"),
                  ],
                )),
            MyNavigationBar()
          ],
        )));
  }
}
