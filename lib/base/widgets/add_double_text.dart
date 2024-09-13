import 'package:airplane_ticket/base/res/styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppDoubleText extends StatelessWidget {
  const AppDoubleText(
      {super.key, required this.bigText, required this.smallText});
  final String bigText;
  final String smallText;

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
          onTap: () => {},
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
