import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTools {
  static List<Color> myColor = [
    Color.fromARGB(255, 247, 248, 253), // 0 light mode background color
    Color.fromARGB(255, 87, 51, 127),
    Color.fromARGB(255, 139, 159, 184),
    Color.fromARGB(255, 255, 255, 255),
    Color.fromARGB(255, 255, 97, 144),
    Color.fromARGB(255, 254, 162, 109), //5
    Color.fromARGB(255, 167, 169, 172), //6
    Color.fromARGB(255, 50, 50, 62), //7 Dark mode background color
    Color.fromARGB(255, 83, 83, 103), //8
  ];

  static responsiveWidth(width, context) {
    return MediaQuery.of(context).size.width * width;
  }

  static reponsiveHeight(height, context) {
    return MediaQuery.of(context).size.height * height;
  }
}
