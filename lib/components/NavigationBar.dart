import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyNavigationBar extends StatefulWidget{

  // final Function callback;
  const MyNavigationBar({Key? key}): super(key: key);

  @override
  State<MyNavigationBar> createState() {
    return _MyNavigationBar();
  }
}

class _MyNavigationBar extends State<MyNavigationBar> {
  int _selectedBarIcon = 0;

  void _changeBarIcon(int indexIcon) {
    setState(() {
      _selectedBarIcon = indexIcon;
    });
    // widget.callback(indexIcon);
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        items: const <BottomNavigationBarItem> [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Discover",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      currentIndex: _selectedBarIcon,
      // onTap: _changeBarIcon,
    );
  }
}