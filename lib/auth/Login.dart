import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key ? key}) : super(key:key);

  @override
  LoginState createState(){
    return LoginState();
  }
}

class LoginState extends State<Login> {

  @override
  void dispose() {

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Heal & Go',
      home: Scaffold(
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(top:23, left:25, right:25 ,bottom:25),
              child: Text(
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
              )
            ),
            Padding(
                padding: EdgeInsets.only(top: 0, bottom: 25, left: 25, right: 25),
                child: Text(
                "Email",
                style: TextStyle(
                  fontFamily: "poppins",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ) ,
            Padding(
              padding: EdgeInsets.only(top: 0, bottom: 25, left: 25, right: 25),
              child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Email',
                      contentPadding: const EdgeInsets.all(8),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12))),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 0, bottom: 25, left: 25, right: 25),
                child: Text(
                  "Password",
                  style: TextStyle(
                    fontFamily: "poppins",
                    fontWeight: FontWeight.bold,
                  ),
                ),
            ) ,
            Padding (
              padding: EdgeInsets.only(top: 0, bottom: 25, left: 25, right: 25),
              child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Password',
                      contentPadding: const EdgeInsets.all(8),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)))
              )
            ),
            Padding (
              padding: EdgeInsets.only(top: 16, bottom: 25, left: 25, right: 25),
              child: ElevatedButton (
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 95, 95, 255) //primary 500,

                ),
                onPressed: () {
                  setState(() {

                  });
                },
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontFamily: "poppins",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            ]
          ),
        )
      );
  }
}