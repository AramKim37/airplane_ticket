import 'package:airplane_ticket/base/widgets/ticket_view.dart';
import 'package:airplane_ticket/screens/home/all_tickets.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

import 'base/bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const BottomNavBar(),
        "all_tickets": (context) => const AllTickets(),
      },
    );
  }
}
