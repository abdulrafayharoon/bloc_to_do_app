import 'package:flutter/material.dart';

const Color bluishClr = Color.fromARGB(255, 11, 101, 242);
const Color yellowClr = Color.fromARGB(255, 230, 181, 23);
const Color pinkClr = Color.fromARGB(255, 224, 61, 240);
const Color white = Color.fromARGB(255, 255, 255, 255);
const Color primaryClr = bluishClr;
const Color darkGrayClr = Color.fromARGB(154, 0, 0, 0);
Color darkHeaderClr = Color(0xFF424242);

class Themes {
  static final light = ThemeData(
    primaryColor: primaryClr,
    brightness: Brightness.light,
  );
  static final dark =
  ThemeData(primaryColor: darkGrayClr, brightness: Brightness.dark);
}
