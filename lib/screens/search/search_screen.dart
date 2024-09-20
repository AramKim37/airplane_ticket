import 'package:airplane_ticket/screens/search/widgets/app_text_icon.dart';
import 'package:airplane_ticket/screens/search/widgets/app_ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../base/res/styles/app_styles.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          SizedBox(height: 40),
          Text(
            "What are\nyou looking for?",
            style: AppStyles.headLineStyle1.copyWith(fontSize: 35),
          ),
          SizedBox(
            height: 20,
          ),
          AppTicketTaps(),
          SizedBox(
            height: 25,
          ),
          AppTextIcons(icon: Icons.flight_takeoff_rounded, text: "Departure"),
          SizedBox(
            height: 20,
          ),
          AppTextIcons(icon: Icons.flight_land_rounded, text: "Arrival"),
        ],
      ),
    );
  }
}
