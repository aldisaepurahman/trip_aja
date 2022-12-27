import 'package:flutter/material.dart';

int replaceColor(String color){
  return int.parse(color.replaceAll('#', '0xff'));
}

Color blue = Color(replaceColor("#0099FF"));
Color blueSoft = Color(replaceColor("#66CCFF"));
Color white = Color(replaceColor("#FFFFFF"));
Color black = Color(replaceColor("#0F0C00"));
Color greyFontColor = Color(replaceColor("#B7B7B7"));