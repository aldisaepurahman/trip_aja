import 'package:flutter/material.dart';
import 'package:heal_and_go/ui/screen/questionnaire/Questionnaire.dart';
import 'package:heal_and_go/ui/components/Color.dart';
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
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage('assets/images/bg_home.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome, User",
              style: TextStyle(
                  color: white,
                  fontFamily: "poppins",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Explore The Best Travel Destination",
              style: TextStyle(
                color: white,
                fontFamily: "poppins",
                fontSize: 16,
              ),
            ),
            SizedBox(height: 25),
            ElevatedButton(onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Questionnaire(client: client)));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)
              ),
              elevation: 5.0,
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25.0)
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