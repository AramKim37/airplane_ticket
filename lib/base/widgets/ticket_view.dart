import 'package:airplane_ticket/base/res/styles/app_styles.dart';
import 'package:airplane_ticket/base/widgets/app_column_text_layout.dart';
import 'package:airplane_ticket/base/widgets/app_layoutbuilder_widget.dart';
import 'package:airplane_ticket/base/widgets/big_circle.dart';
import 'package:airplane_ticket/base/widgets/big_dot.dart';
import 'package:airplane_ticket/base/widgets/text_style_fourth.dart';
import 'package:airplane_ticket/base/widgets/text_style_third.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.85,
      height: 200,
      child: Container(
        margin: EdgeInsets.only(right: 16),
        child: Column(
          children: [
            //blue part of ticket
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      TextStyleThird(text: "NYC"),
                      Expanded(
                        child: Container(),
                      ),
                      BigDot(),
                      Expanded(
                        child: Container(
                            child: Stack(
                          children: [
                            SizedBox(
                              height: 24,
                              child: AppLayoutBuilderWidget(
                                randomDivider: 6,
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.57, //90도로 꺽는다.
                                child: Icon(Icons.local_airport_rounded,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        )),
                      ),
                      BigDot(),
                      Expanded(
                        child: Container(),
                      ),
                      TextStyleThird(text: "LDN")
                    ],
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      SizedBox(
                          width: 100,
                          child: TextStyleFourth(
                            text: "New-York",
                          )),
                      Expanded(
                        child: Container(),
                      ),
                      TextStyleFourth(text: "8H 30M"),
                      Expanded(
                        child: Container(),
                      ),
                      SizedBox(
                          width: 100,
                          child: TextStyleFourth(
                            text: "London",
                            align: TextAlign.end,
                          ))
                    ],
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: AppStyles.ticketBlue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21),
                ),
              ),
            ),
            //circles
            Container(
              color: AppStyles.ticketRed,
              child: Row(
                children: [
                  BigCircle(
                    isRight: false,
                  ),
                  Expanded(
                    child: AppLayoutBuilderWidget(
                      randomDivider: 10,
                    ),
                  ),
                  BigCircle(
                    isRight: true,
                  )
                ],
              ),
            ),
            //red part of ticket
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketRed,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(21),
                  bottomRight: Radius.circular(21),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnTextLayout(topText: "1 May", bottomText: "Date"),
                      AppColumnTextLayout(
                        topText: "08:00 AM",
                        bottomText: "Departure Time",
                        alignment: CrossAxisAlignment.center,
                      ),
                      AppColumnTextLayout(
                        topText: "23",
                        bottomText: "Number",
                        alignment: CrossAxisAlignment.end,
                      ),
                    ],
                  ),
                ],
              ),
              // decoration: BoxDecoration(
              //   color: AppStyles.ticketBlue,
              //   borderRadius: BorderRadius.only(
              //     topLeft: Radius.circular(21),
              //     topRight: Radius.circular(21),
              //   ),
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
