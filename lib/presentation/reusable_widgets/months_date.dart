
import 'package:flutter/material.dart';

import 'custome_text_widget.dart';

class Months extends StatelessWidget {
  const Months({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        TextWidget(
          text: "Today",
          color: Color(0xFF979797),
          fontSize: 10,
          fontWeight: FontWeight.w400,
        ),
        TextWidget(
          text: "May 25",
          color: Color(0xFF979797),
          fontSize: 10,
          fontWeight: FontWeight.w400,
        ),
        TextWidget(
          text: "May 26",
          color: Color(0xFF979797),
          fontSize: 10,
          fontWeight: FontWeight.w400,
        ),
        TextWidget(
          text: "May 27",
          color: Color(0xFF979797),
          fontSize: 10,
          fontWeight: FontWeight.w400,
        ),
        TextWidget(
          text: "May 28",
          color: Color(0xFF979797),
          fontSize: 10,
          fontWeight: FontWeight.w400,
        ),
        TextWidget(
          text: "May 29",
          color: Color(0xFF979797),
          fontSize: 10,
          fontWeight: FontWeight.w400,
        ),
        TextWidget(
          text: "May 30",
          color: Color(0xFF979797),
          fontSize: 10,
          fontWeight: FontWeight.w400,
        ),
        TextWidget(
          text: "Jun 1",
          color: Color(0xFF979797),
          fontSize: 10,
          fontWeight: FontWeight.w400,
        ),
      ],
    );
  }
}