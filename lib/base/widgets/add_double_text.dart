import 'package:airplane_ticket/base/res/styles/app_styles.dart';
import 'package:airplane_ticket/screens/all_tickets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppDoubleText extends StatelessWidget {
  const AppDoubleText(
      {super.key,
      required this.bigText,
      required this.smallText,
      required this.func});
  final String bigText;
  final String smallText;
  final VoidCallback func;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigText,
          style: AppStyles.headLineStyle3,
        ),
        InkWell(
          onTap: () => {Navigator.pushNamed(context, "all_tickets")},
          child: Text(
            smallText,
            style: AppStyles.headLineStyle.copyWith(
              color: AppStyles.primaryColor,
            ),
          ),
        )
      ],
    );
  }
}
