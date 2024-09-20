import 'package:airplane_ticket/base/res/media.dart';
import 'package:airplane_ticket/screens/search/widgets/app_text_icon.dart';
import 'package:airplane_ticket/screens/search/widgets/app_ticket_tabs.dart';
import 'package:airplane_ticket/screens/search/widgets/find_tickets.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../base/res/styles/app_styles.dart';
import '../../base/widgets/add_double_text.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
          SizedBox(
            height: 25,
          ),
          FindTickets(),
          SizedBox(
            height: 40,
          ),
          AppDoubleText(
            bigText: "Upcoming Flights ",
            smallText: "View All",
            func: () => {Navigator.pushNamed(context, "all_tickets")},
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 15,
                ),
                width: size.width * .42,
                height: 435,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/plane_sit.jpg"),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "20% discount on the early booking of this flight. Don't miss",
                      style: AppStyles.headLineStyle3,
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 15),
                            width: size.width * .44,
                            height: 210,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              color: Color(0xFF3AB8B8),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Discount\nfor survey",
                                  style: AppStyles.headLineStyle3.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Take the survey about our services and get discount",
                                  style: AppStyles.headLineStyle3.copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            right: -55,
                            top: -40,
                            child: Container(
                              padding: EdgeInsets.all(30),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    width: 18,
                                    color: Color.fromARGB(240, 194, 205, 205),
                                  )),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                        width: size.width * .44,
                        height: 210,
                        decoration: BoxDecoration(
                          color: Color(0XFFEC6545),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Column(
                          children: [
                            Text(
                              "Take Love",
                              style: AppStyles.headLineStyle1
                                  .copyWith(color: Colors.white),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Icon(
                              FluentSystemIcons.ic_fluent_heart_filled,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
