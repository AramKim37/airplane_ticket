import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);
Color text = const Color(0xFF3b3b3b);

class AppStyles {
  static Color primaryColor = primary;
  static Color textColor = text;
  static Color bgColor = Color(0xFFeeedf2);
  static Color ticketBlue = const Color(0xFF526799);
  static Color ticketRed = Colors.red;
  static Color planeColor = Color(0xFFBFC2DF);
  static Color findTicketColor = Color(0xD91130CE);

  static TextStyle textStyle =
      TextStyle(fontSize: 16, color: textColor, fontWeight: FontWeight.w500);

  static TextStyle headLineStyle = TextStyle(
    color: textColor,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static TextStyle headLineStyle1 = TextStyle(
    color: textColor,
    fontSize: 26,
    fontWeight: FontWeight.bold,
  );
  static TextStyle headLineStyle2 = const TextStyle(
    color: Colors.grey,
    fontSize: 17,
    fontWeight: FontWeight.w500,
  );
  static TextStyle headLineStyle3 = TextStyle(
    color: text,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );
  static TextStyle headLineStyle4 = TextStyle(
    color: text,
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );
}
