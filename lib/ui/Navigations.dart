import 'package:flutter/material.dart';
import 'package:heal_and_go/ui/components/NavigationBar.dart';
import 'package:heal_and_go/ui/screen/dashboard/Profil.dart';
import 'package:heal_and_go/ui/screen/dashboard/Home.dart';
import 'package:heal_and_go/ui/screen/dashboard/DiscoverView.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Navigations extends StatefulWidget {
  const Navigations({Key? key, required this.client}) : super(key: key);

  final SupabaseClient client;

  @override
  State<Navigations> createState() => _NavigationState();
}

class _NavigationState extends State<Navigations> {

  late Widget _screen;

  @override
  void initState() {
    super.initState();
    _screen = Home(client: widget.client);
  }

  void changeScreen(int index) {
    setState((){

      switch (index) {
        case 0:
          _screen = Home(client: widget.client);
          break;

        case 1:
          _screen = const Discover();
          break;

        case 2:
          _screen = Profil(client: widget.client);
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screen,
      bottomNavigationBar: MyNavigationBar(callback: changeScreen),
    );
  }
}