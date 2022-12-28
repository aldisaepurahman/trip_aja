import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:heal_and_go/ui/components/Color.dart';

class MyNavigationBar extends StatefulWidget{

  final Function callback;
  const MyNavigationBar({Key? key, required this.callback}): super(key: key);

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
    widget.callback(indexIcon);
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
      onTap: _changeBarIcon,
      unselectedLabelStyle: TextStyle(
        fontFamily: "Poppins",
        color: greyFontColor,
        fontSize: 12,
      ),
      selectedLabelStyle: TextStyle(
        fontFamily: "Poppins",
        color: blue,
        fontSize: 12,
        fontWeight: FontWeight.bold
      ),
    );
  }
}