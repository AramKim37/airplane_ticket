import 'package:airplane_ticket/base/widgets/text_style_fourth.dart';
import 'package:airplane_ticket/base/widgets/text_style_third.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppColumnTextLayout extends StatelessWidget {
  final String topText;
  final String bottomText;
  final CrossAxisAlignment alignment;
  const AppColumnTextLayout(
      {super.key,
      required this.topText,
      required this.bottomText,
      this.alignment = CrossAxisAlignment.start});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        TextStyleThird(
          text: topText,
        ),
        SizedBox(
          height: 5,
        ),
        TextStyleFourth(
          text: bottomText,
        ),
      ],
    );
  }
}
