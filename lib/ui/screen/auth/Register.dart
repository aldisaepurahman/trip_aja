import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:heal_and_go/ui/screen/auth/Login.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  RegisterState createState() {
    return RegisterState();
  }
}

class RegisterState extends State<Register> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final pwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Heal & Go',
        home: Scaffold(
            body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 23),
              child: const Text("Sign up.",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontFamily: "poppins",
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 27, 28, 30))),
            ),
            Image.asset("assets/images/register_illustration.jpg",
                height: 300, fit: BoxFit.contain),
            const Padding(
                padding: EdgeInsets.only(top: 10),
              child: Text("Full name",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontFamily: "poppins",
                    fontWeight: FontWeight.bold,
                  )),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 18),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.person),
                    hintText: "Full name",
                    hintStyle: const TextStyle(
                      fontFamily: "Poppins",
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0))),
              ),
            ),
            const Text("Email",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontFamily: "poppins",
                    fontWeight: FontWeight.bold,
                )),
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 18),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.mail),
                    hintText: "Email",
                    hintStyle: const TextStyle(
                      fontFamily: "Poppins",
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0))),
              ),
            ),
            const Text("Password",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontFamily: "poppins",
                    fontWeight: FontWeight.bold,
            )),
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 18),
              child: TextField(
                obscureText: true,
                controller: pwdController,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock),
                    hintText: "Password",
                    hintStyle: const TextStyle(
                      fontFamily: "Poppins",
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0))),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, bottom: 8),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)),
                  padding: const EdgeInsets.all(15),
                  backgroundColor:
                      const Color(0XFF5F5FFF), //primary 500
                ),
                onPressed: () {
                  if (nameController.text.isNotEmpty && emailController.text.isNotEmpty && pwdController.text.isNotEmpty) {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => const Login()));
                  } else {
                    Fluttertoast.showToast(
                        msg: "All available fields is required",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.black,
                        textColor: Colors.white,
                        fontSize: 12.0);
                  }
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
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Center(
                child: RichText(
                  text: TextSpan(
                      style: const TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Poppins"),
                      children: [
                        const TextSpan(text: "Have an Heal&Go account? "),
                        TextSpan(
                            text: "Login",
                            style: const TextStyle(
                                color: Color(0xff5f5fff),
                                fontWeight: FontWeight.bold,
                                fontFamily: "Poppins"),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.of(context).pushReplacement(MaterialPageRoute(
                                    builder: (context) => const Login()));
                              })
                      ]),
                ),
              ),
            )
          ],
        )));
  }
}
