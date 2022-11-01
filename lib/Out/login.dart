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
        body: Center(
          child: Column(
            children: [],
          ),
        )
      )
    );

  }
}