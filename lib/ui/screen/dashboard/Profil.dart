import 'package:flutter/material.dart';
import 'package:heal_and_go/ui/screen/auth/Login.dart';
import 'package:heal_and_go/ui/components/Profil_Button.dart';

class Profil extends StatefulWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  ProfilState createState() {
    return ProfilState();
  }
}

class ProfilState extends State<Profil> {
  String nama = "Chris Hemsworth";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Heal & Go',
        home: Scaffold(
            body: ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 25, bottom: 35),
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: const Text("Profile",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "poppins",
                      fontSize: 25,
                      fontWeight: FontWeight.bold)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    margin: const EdgeInsets.only(left: 20),
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: const DecorationImage(
                            image: AssetImage("images/profil.jpg")))),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(nama,
                      style: const TextStyle(
                          fontFamily: "poppins",
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.edit))
              ],
            ),
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 35, vertical: 50),
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        child: const Text(
                          "Information",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontFamily: "poppins",
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )),
                    const Profil_Button(ikon: Icons.menu_book, menu: "FAQ"),
                    const Profil_Button(ikon: Icons.star, menu: "Rate Us"),
                    Container(
                        margin: const EdgeInsets.only(bottom: 20, top: 20),
                        child: const Text(
                          "Preference",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        )),
                    const Profil_Button(ikon: Icons.language, menu: "Language"),
                    Profil_Button(
                        ikon: Icons.logout,
                        color: Colors.red,
                        menu: "Logout",
                        aksi: () {
                          Navigator.of(context).pushReplacement(MaterialPageRoute(
                              builder: (context) => const Login()));
                        }),
                  ],
                )),
          ],
        )));
  }
}
