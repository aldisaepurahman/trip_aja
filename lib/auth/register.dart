import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  RegisterState createState() {
    return RegisterState();
  }
}

class RegisterState extends State<Register> {
  @override
  void dispose() {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Heal & Go',
        home: Scaffold(
            body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 23),
              child: Text("Sign up.",
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                      fontFamily: "poppins",
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 27, 28, 30))),
            ),
            Image.asset("images/register_illustration.jpg",
                height: 300, fit: BoxFit.contain),
            Text("Full name",
                textAlign: TextAlign.left,
                style: const TextStyle(
                    fontFamily: "poppins",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 27, 28, 30))),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 18),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    hintText: "Full name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0))),
              ),
            ),
            Text("Email",
                textAlign: TextAlign.left,
                style: const TextStyle(
                    fontFamily: "poppins",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 27, 28, 30))),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 18),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.mail),
                    hintText: "Email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0))),
              ),
            ),
            Text("Password",
                textAlign: TextAlign.left,
                style: const TextStyle(
                    fontFamily: "poppins",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 27, 28, 30))),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 18),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    hintText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0))),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 8),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)),
                  padding: EdgeInsets.all(20),
                  backgroundColor:
                      Color.fromARGB(255, 95, 95, 255), //primary 500
                ),
                onPressed: () {
                  setState(() {});
                },
                child: const Text(
                  "Sign Up",
                  style: TextStyle(
                    fontFamily: "poppins",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 50),
              child: Text("Already have an account? Login",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontFamily: "poppins",
                      color: Color.fromARGB(100, 27, 28, 30))),
            )
          ],
        )));
  }
}
