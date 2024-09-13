import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

import 'base/bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
  var test = TestClass(x: 2, y: 3);
  print(test.x);
}

class TestClass {
  late int x;
  late int y;

  TestClass({required this.x, required this.y});
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavBar(),
    );
  }
}
