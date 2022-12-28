import 'package:flutter/material.dart';
import 'package:heal_and_go/ui/components/Color.dart';

class MultiSelectChip extends StatefulWidget {
  final List<String> categoryList;
  final ValueChanged<String> onSelectedChoice;
  MultiSelectChip({required this.categoryList, required this.onSelectedChoice});
  @override
  _MultiSelectChipState createState() => _MultiSelectChipState();
}
class _MultiSelectChipState extends State<MultiSelectChip> {
  String selectedChoice = "All";
  // this function will build and return the choice list
  _buildChoiceList() {
    List<Widget> choices = [];
    widget.categoryList.forEach((item) {
      choices.add(Container(
        padding: const EdgeInsets.only(right: 7),
        child: ChoiceChip(
          label: Text(
            item,
            style: TextStyle(
              fontFamily: 'poppins',
              fontSize: 12,
              color: (selectedChoice == item ? white : blue),
            ),
          ),
          backgroundColor: Colors.blue[50],
          selectedColor: blueSoft,
          selected: selectedChoice == item,
          onSelected: (selected) {
            setState(() {
              selectedChoice = item;
              widget.onSelectedChoice(selectedChoice);
            });
          },
        ),
      ));
    });
    return choices;
  }
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: _buildChoiceList(),
    );
  }
}