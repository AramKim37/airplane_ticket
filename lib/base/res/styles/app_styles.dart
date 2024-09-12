import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);
Color text = const Color(0xFF3b3b3b);

class AppStyles {
  static Color primaryColor = primary;
  static Color textColor = text;
  static TextStyle headLineStyle1 = TextStyle(
    color: textColor,
    fontSize: 26,
    fontWeight: FontWeight.w500,
  );
  static TextStyle headLineStyle2 = const TextStyle(
    color: Colors.grey,
    fontSize: 17,
    fontWeight: FontWeight.w500,
  );
}
