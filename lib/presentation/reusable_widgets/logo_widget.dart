
import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "agin",
          style: TextStyle(
            fontFamily: "Roboto",

            fontWeight: FontWeight.w900,
            fontSize: 25,
            color: Color(0xFF00D600),
          ),
        ),
        Stack(children: [
          Text(
            "o",
            style: TextStyle(
              fontFamily: "Roboto",
              fontWeight: FontWeight.w900,
              fontSize: 25,
              color: Color(0xFF00D600),
            ),
          ),
          Positioned(
            top: 5,
            left: 6,
            child: Container(
              color: Color(0xFF20382F),
              height: 10,
              width: 3,
            ),
          )
        ])
      ],
    );
  }
}