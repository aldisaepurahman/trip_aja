import 'dart:async';

import 'package:flutter/material.dart';
import 'package:heal_and_go/ui/components/Color.dart';
import 'package:heal_and_go/ui/Navigations.dart';
import 'package:heal_and_go/ui/screen/auth/Login.dart';
import 'package:heal_and_go/ui/screen/onboarding/OnboardingView.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  await Supabase.initialize(
      url: "https://lsqfeaoubqakbhwjxdte.supabase.co",
      anonKey:
          "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxzcWZlYW91YnFha2Jod2p4ZHRlIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NzE3NzgyMTQsImV4cCI6MTk4NzM1NDIxNH0.ppZlE0TQuER8-j8bHVMKp8tw_ojyLBg4bkETOjTfgG0");
  final SharedPreferences pref = await SharedPreferences.getInstance();
  final String user = pref.getString("user") ?? "";
  final bool hasOnboard = pref.getBool("onboarding") ?? false;
  bool isLogin = user.isNotEmpty ? true : false;
  runApp(MyApp(
      client: Supabase.instance.client,
      hasOnboard: hasOnboard,
      status: isLogin));
}

class MyApp extends StatelessWidget {
  const MyApp(
      {super.key,
      required this.client,
      required this.hasOnboard,
      required this.status});

  final SupabaseClient client;
  final bool hasOnboard;
  final bool status;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SplashScreen(
            client: client, hasOnboard: hasOnboard, status: status));
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen(
      {super.key,
      required this.client,
      required this.hasOnboard,
      required this.status});

  final SupabaseClient client;
  final bool hasOnboard;
  final bool status;

  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<SplashScreen> {
  startSplashScreen() async {
    Widget redirected = (widget.hasOnboard)
        ? (widget.status)
            ? Navigations(client: widget.client)
            : Login(client: widget.client)
        : OnboardingView(client: widget.client);
    var duration = const Duration(seconds: 2);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => redirected));
    });
  }

  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "TripAja",
      home: Scaffold(
        backgroundColor: white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                "assets/images/trip_aja_logo.png",
                width: 200.0,
                height: 100.0,
                fit: BoxFit.contain,
              ),
            )
          ],
        ),
      ),
    );
  }
}
