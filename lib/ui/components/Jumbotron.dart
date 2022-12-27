import 'package:flutter/material.dart';
import 'package:heal_and_go/ui/screen/questionnaire/Questionnaire.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Jumbotron extends StatelessWidget {
  const Jumbotron({Key ? key, required this.client}) : super(key: key);

  final SupabaseClient client;

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
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Questionnaire(client: client)));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Color(0xff5f5fff),
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