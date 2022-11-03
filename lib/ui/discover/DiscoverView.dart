import 'package:flutter/material.dart';
import 'package:heal_and_go/components/DestinationCard.dart';
import 'package:heal_and_go/components/NavigationBar.dart';
import 'package:heal_and_go/info/DestinationInfo.dart';
import 'package:heal_and_go/components/MultiSelectChip.dart';

class Discover extends StatefulWidget {
  const Discover({Key? key}) : super(key: key);

  @override
  DiscoverState createState() {
    return DiscoverState();
  }
}

class DiscoverState extends State<Discover> {
  List<String> filterList = ['All', 'Beach', 'Mountain', 'Park', 'Temple', 'City', 'Desert'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(right: 30, left: 30, top: 40),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 20),
              width: double.infinity,
              child: Text(
                'Let\'s Go',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 36,
                  fontFamily: 'poppins',
                ),
              ),
            ),
            SizedBox(
                height: 10
            ),
            Flexible(
              child: TextField(
                textAlignVertical: TextAlignVertical.bottom,
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none
                  ),
                  hintText: 'Search',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontFamily: 'poppins',
                  ),
                  prefixIcon: Container(
                    padding: EdgeInsets.all(15),
                    child: Icon(Icons.search),
                    width: 18,
                  )
                ),
              ),
            ),
            SizedBox(
                height: 20
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: MultiSelectChip(filterList),
            ),
            SizedBox(
                height: 10
            ),
            Expanded(
              flex: 10,
              child: Container(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.75,

                  ),
                  itemBuilder: (context, index) {
                    return DestinationCard(destinationinfo: destinationinfo[index]);
                  },
                  itemCount: 10,

                ),
              ),
            ),
          ],
        )
      ),
      bottomNavigationBar: MyNavigationBar(),
    );
  }
}