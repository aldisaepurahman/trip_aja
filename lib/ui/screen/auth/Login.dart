import 'dart:convert';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:heal_and_go/data/response/Users.dart';
import 'package:heal_and_go/data/result.dart';
import 'package:heal_and_go/ui/components/Button.dart';
import 'package:heal_and_go/ui/components/Color.dart';
import 'package:heal_and_go/ui/components/Dialog.dart';
import 'package:heal_and_go/ui/screen/auth/Register.dart';
import 'package:heal_and_go/ui/Navigations.dart';
import 'package:heal_and_go/ui/screen/auth/AuthViewModel.dart';
import 'package:heal_and_go/utils/parsing.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Login extends StatefulWidget {
  const Login({Key? key, required this.client}) : super(key: key);

  final SupabaseClient client;

  @override
  LoginState createState() {
    return LoginState();
  }
}

class LoginState extends State<Login> {
  final emailController = TextEditingController();
  final pwdController = TextEditingController();

  AuthViewModel authViewModel = AuthViewModel();
  bool isSubmitted = false;
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<void> _saveSession(Users? user) async {
    final SharedPreferences prefs = await _prefs;
    user?.password = "${user?.password}_${getRandomString(18)}";
    prefs.setString("user", jsonEncode(user?.toJson()));
  }

  void showSubmitDialog(int dialogType) {
    String imgPath = (dialogType > 1)
        ? (dialogType == 2)
            ? "assets/images/success.json"
            : "assets/images/incorrect.json"
        : "assets/images/loading_icon.json";
    String content = (dialogType > 1)
        ? (dialogType == 2)
            ? "Login Successfully!"
            : "Sorry, your login is failed. Make sure your email and password are correct"
        : "";

    showDialog(
      context: context,
      builder: (context) {
        if (dialogType == 2) {
          Future.delayed(const Duration(seconds: 2), () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => Navigations(client: widget.client)));
          });
        }
        if (dialogType > 1) {
          return DialogNoButton(path_image: imgPath, content: content);
        }
        return LoadingDialog(path_image: imgPath);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: ChangeNotifierProvider<AuthViewModel>(
            create: (context) => authViewModel,
            child: ListView(children: [
              Container(
                margin: const EdgeInsets.only(
                    top: 23, left: 25, right: 25, bottom: 25),
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
                    "assets/images/login.png",
                    fit: BoxFit.contain,
                    height: 300,
                  )),
              const Padding(
                padding:
                EdgeInsets.only(top: 16, bottom: 10, left: 25, right: 25),
                child: Text(
                  "Email",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 0, bottom: 18, left: 25, right: 25),
                child: TextField(
                  controller: emailController,
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
                  padding: const EdgeInsets.only(
                      top: 0, bottom: 18, left: 25, right: 25),
                  child: TextField(
                      controller: pwdController,
                      obscureText: true,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.lock),
                          hintText: 'Password',
                          hintStyle: const TextStyle(
                            fontFamily: "Poppins",
                          ),
                          contentPadding: const EdgeInsets.all(16),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12))))),
              Padding(
                padding: const EdgeInsets.only(
                    top: 20, bottom: 8, left: 25, right: 25),
                child:
                  ButtonLong(
                    content: "LOGIN",
                    bg_color: blue,
                    onPressed: () async {
                      if (emailController.text.isNotEmpty &&
                          emailController.text.contains("@") &&
                          pwdController.text.isNotEmpty) {
                        isSubmitted = !isSubmitted;
                        await authViewModel.signIn(
                            widget.client,
                            emailController.text,
                            pwdController.text
                        );
                      } else {
                        Fluttertoast.showToast(
                            msg: "Email & Password is required",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.black,
                            textColor: Colors.white,
                            fontSize: 12.0);
                      }
                    },
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
                          const TextSpan(text: "New to this app? "),
                          TextSpan(
                              text: "Register",
                              style: TextStyle(
                                  color: blue,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Poppins"),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => Register(client: widget.client)));
                                })
                        ]),
                  ),
                ),
              ),
              Consumer<AuthViewModel>(
                builder: (_, value, child) {
                  if (value.users_data.status == Status.LOADING) {
                    if (isSubmitted) {
                      showSubmitDialog(1);
                    }
                  }
                  if (value.users_data.status == Status.ERROR) {
                    Future.delayed(const Duration(seconds: 1), () {
                      showSubmitDialog(3);
                    });
                  }
                  if (value.users_data.status == Status.SUCCESS) {
                    _saveSession(value.users_data.data);
                    Future.delayed(const Duration(seconds: 1), () {
                      showSubmitDialog(2);
                    });
                  }
                  return const SizedBox(width: 0);
                },
              )
            ]),
          ),
        );
  }
}
