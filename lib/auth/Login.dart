import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:heal_and_go/auth/register.dart';
import 'package:heal_and_go/ui/Navigations.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  LoginState createState() {
    return LoginState();
  }
}

class LoginState extends State<Login> {
  @override
  void dispose() {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Heal & Go',
        home: Scaffold(
          body: ListView(children: [
            Container(
              margin: EdgeInsets.only(top: 23, left: 25, right: 25, bottom: 25),
              child: const Text(
                "Login",
                style: TextStyle(
                  fontFamily: "poppins",
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ),
            Center(
                child: Image.asset(
              "images/login_illustration.jpg",
              fit: BoxFit.contain,
              height: 300,
            )),
            const Padding(
              padding: EdgeInsets.only(top: 16, bottom: 10, left: 25, right: 25),
              child: Text(
                "Email",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0, bottom: 18, left: 25, right: 25),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.mail),
                    hintText: 'Email',
                    hintStyle: const TextStyle(
                      fontFamily: "Poppins",
                    ),
                    contentPadding: const EdgeInsets.all(16),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12))),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 0, bottom: 10, left: 25, right: 25),
              child: Text(
                "Password",
                style: TextStyle(
                  fontFamily: "poppins",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
                padding:
                    EdgeInsets.only(top: 0, bottom: 18, left: 25, right: 25),
                child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        hintText: 'Password',
                        hintStyle: const TextStyle(
                          fontFamily: "Poppins",
                        ),
                        contentPadding: const EdgeInsets.all(16),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12))))),
            Padding(
              padding:
                  const EdgeInsets.only(top: 20, bottom: 8, left: 25, right: 25),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff5f5fff),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                  padding: EdgeInsets.all(15),
                ),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Navigations()));
                },
                child: const Text(
                  "Login",
                  style: TextStyle(
                    fontFamily: "poppins",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Center(
                child: RichText(
                  text: TextSpan(
                      style: const TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Poppins"),
                      children: [
                        const TextSpan(text: "New to Heal&Go? "),
                        TextSpan(
                            text: "Login",
                            style: const TextStyle(
                                color: Color(0xff5f5fff),
                                fontWeight: FontWeight.bold,
                                fontFamily: "Poppins"),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const Register()));
                              })
                      ]),
                ),
              ),
            )
          ]),
        ));
  }
}
