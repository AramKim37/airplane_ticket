import 'package:airplane_ticket/base/res/styles/app_styles.dart';
import 'package:airplane_ticket/base/widgets/app_column_text_layout.dart';
import 'package:airplane_ticket/base/widgets/app_layoutbuilder_widget.dart';
import 'package:airplane_ticket/base/widgets/big_circle.dart';
import 'package:airplane_ticket/base/widgets/big_dot.dart';
import 'package:airplane_ticket/base/widgets/text_style_fourth.dart';
import 'package:airplane_ticket/base/widgets/text_style_third.dart';
import 'package:flutter/material.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool wholeScreen;

  const TicketView({super.key, required this.ticket, this.wholeScreen = false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.85,
      height: 200,
      child: Container(
        margin: EdgeInsets.only(right: wholeScreen == true ? 0 : 16),
        child: Column(
          children: [
            //blue part of ticket
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      TextStyleThird(text: ticket["from"]["code"]),
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
                      TextStyleThird(text: ticket["to"]["code"])
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
                            text: ticket["from"]["name"],
                          )),
                      Expanded(
                        child: Container(),
                      ),
                      TextStyleFourth(text: ticket["flying_time"]),
                      Expanded(
                        child: Container(),
                      ),
                      SizedBox(
                          width: 100,
                          child: TextStyleFourth(
                            text: ticket["to"]["name"],
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
                      AppColumnTextLayout(
                          topText: ticket["date"], bottomText: "Date"),
                      AppColumnTextLayout(
                        topText: ticket["departure_time"],
                        bottomText: "Departure_Time",
                        alignment: CrossAxisAlignment.center,
                      ),
                      AppColumnTextLayout(
                        topText: ticket["number"].toString(),
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
