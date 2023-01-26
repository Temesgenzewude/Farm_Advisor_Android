
import 'package:flutter/material.dart';

import 'custome_text_widget.dart';

class Days extends StatelessWidget {
  const Days({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        TextWidget(
          text: "Mon",
          color: Color(0xFF20382F),
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
        TextWidget(
          text: "Tue",
          color: Color(0xFF20382F),
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
        TextWidget(
          text: "Wen",
          color: Color(0xFF20382F),
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
        TextWidget(
          text: "Thu",
          color: Color(0xFF20382F),
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
        TextWidget(
          text: "Fri",
          color: Color(0xFF20382F),
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
        TextWidget(
          text: "Sat",
          color: Color(0xFF20382F),
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
        TextWidget(
          text: "Sun",
          color: Color(0xFF20382F),
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
        TextWidget(
          text: "Mon",
          color: Color(0xFF20382F),
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
      ],
    );
  }
}