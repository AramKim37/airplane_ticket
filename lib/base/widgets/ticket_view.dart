import 'package:airplane_ticket/base/res/styles/app_styles.dart';
import 'package:airplane_ticket/base/widgets/app_layoutbuilder_widget.dart';
import 'package:airplane_ticket/base/widgets/big_circle.dart';
import 'package:airplane_ticket/base/widgets/big_dot.dart';
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
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "NYC",
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.white),
                      ),
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
                      Text(
                        "LND",
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        "New-York",
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.white),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Text(
                        "8H 30M",
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.white),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Text(
                        "London",
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.white),
                      )
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
                    children: [
                      Text(
                        "1 MAY",
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.white),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Text(
                        "08:00 AM",
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.white),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Text(
                        "23",
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        "Date",
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.white),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Text(
                        "Departure time",
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.white),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Text(
                        "Number",
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.white),
                      )
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
