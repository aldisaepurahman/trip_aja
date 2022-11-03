import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:heal_and_go/auth/Login.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  RegisterState createState() {
    return RegisterState();
  }
}

class RegisterState extends State<Register> {

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
                    fontWeight: FontWeight.bold,
                )),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 18),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    hintText: "Full name",
                    hintStyle: const TextStyle(
                      fontFamily: "Poppins",
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0))),
              ),
            ),
            Text("Email",
                textAlign: TextAlign.left,
                style: const TextStyle(
                    fontFamily: "poppins",
                    fontWeight: FontWeight.bold,
                )),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 18),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.mail),
                    hintText: "Email",
                    hintStyle: const TextStyle(
                      fontFamily: "Poppins",
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0))),
              ),
            ),
            Text("Password",
                textAlign: TextAlign.left,
                style: const TextStyle(
                    fontFamily: "poppins",
                    fontWeight: FontWeight.bold,
            )),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 18),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    hintText: "Password",
                    hintStyle: const TextStyle(
                      fontFamily: "Poppins",
                    ),
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
                  padding: EdgeInsets.all(15),
                  backgroundColor:
                      Color(0XFF5F5FFF), //primary 500
                ),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Login()));
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
            Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: Center(
                child: RichText(
                  text: TextSpan(
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Poppins"),
                      children: [
                        TextSpan(text: "New to Heal&Go? "),
                        TextSpan(
                            text: "Login",
                            style: TextStyle(
                                color: Color(0xff5f5fff),
                                fontWeight: FontWeight.bold,
                                fontFamily: "Poppins"),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Login()));
                              })
                      ]),
                ),
              ),
            )
          ],
        )));
  }
}
