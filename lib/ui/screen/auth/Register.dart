import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:heal_and_go/data/response/Users.dart';
import 'package:heal_and_go/data/result.dart';
import 'package:heal_and_go/ui/components/Dialog.dart';
import 'package:heal_and_go/ui/components/Color.dart';
import 'package:heal_and_go/ui/components/Button.dart';
import 'package:heal_and_go/ui/screen/auth/Login.dart';
import 'package:heal_and_go/ui/screen/auth/AuthViewModel.dart';
import 'package:provider/provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Register extends StatefulWidget {
  const Register({Key? key, required this.client}) : super(key: key);

  final SupabaseClient client;

  @override
  RegisterState createState() {
    return RegisterState();
  }
}

class RegisterState extends State<Register> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final pwdController = TextEditingController();

  AuthViewModel authViewModel = AuthViewModel();
  bool isSubmitted = false;

  void showSubmitDialog(int dialogType) {
    String imgPath = (dialogType > 1)
        ? (dialogType == 2)
            ? "assets/images/success.json"
            : "assets/images/incorrect.json"
        : "assets/images/loading_icon.json";
    String content = (dialogType > 1)
        ? (dialogType == 2)
            ? "Register Successfully!"
            : "Sorry, your register is failed. Make sure your email and password are correct"
        : "";

    showDialog(
      context: context,
      builder: (context) {
        Future.delayed(const Duration(seconds: 2), () {
          if (dialogType == 2) {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => Login(client: widget.client)));
          }
        });
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
                child: ListView(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 23),
                        child: const Text("Create Your Account",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontFamily: "poppins",
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 27, 28, 30))),
                      ),
                      Image.asset("assets/images/signup.png",
                          height: 300, fit: BoxFit.contain),
                      Text(
                        "Full name",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: "poppins",
                          fontWeight: FontWeight.bold,
                        )
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
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                          ),
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
                        margin: EdgeInsets.only(top: 20, bottom: 8),
                        child: ButtonLong(
                          bg_color: blue,
                          content: "SIGN UP",
                          onPressed: () async {
                            if (nameController.text.isNotEmpty &&
                                emailController.text.isNotEmpty &&
                                emailController.text.contains("@") &&
                                pwdController.text.isNotEmpty) {
                              isSubmitted = !isSubmitted;
                              await authViewModel.signup(
                                  widget.client,
                                  Users(
                                      email: emailController.text,
                                      full_name: nameController.text,
                                      password: pwdController.text));
                            } else {
                              Fluttertoast.showToast(
                                  msg: "All available fields is required",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.BOTTOM,
                                  timeInSecForIosWeb: 1,
                                  backgroundColor: Colors.black,
                                  textColor: Colors.white,
                                  fontSize: 12.0
                              );
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
                                  TextSpan(
                                      text: "Have an account before? "),
                                  TextSpan(
                                      text: "Login",
                                      style: TextStyle(
                                          color: blue,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "Poppins"),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          Navigator.of(context).pushReplacement(
                                              MaterialPageRoute(
                                                  builder: (context) => Login(
                                                      client: widget.client)));
                                        })
                                ]),
                          ),
                        ),
                      ),
                      Consumer<AuthViewModel>(
                      builder: (_, value, child) {
                        if (value.register_status.status == Status.LOADING) {
                          if (isSubmitted) {
                            showSubmitDialog(1);
                          }
                        }
                        if (value.register_status.status == Status.ERROR) {
                          Future.delayed(const Duration(seconds: 1), () {
                            showSubmitDialog(3);
                          });
                        }
                        if (value.register_status.status == Status.SUCCESS) {
                          Future.delayed(const Duration(seconds: 1), () {
                            showSubmitDialog(2);
                          });
                        }
                        return const SizedBox(width: 0);
                      },
                    )
                  ],
                )));
  }
}