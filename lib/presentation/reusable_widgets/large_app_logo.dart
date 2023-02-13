import 'package:flutter/material.dart';

class LargeAppLogo extends StatelessWidget {
  const LargeAppLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        CircleAvatar(
          radius: 100,
          backgroundColor: Color(0xFFDFEFD9),
          child: CircleAvatar(
            backgroundColor: Color(0xFF00D600),
            radius: 50,
            child: CircleAvatar(
              backgroundColor: Color(0xFFDFEFD9),
              radius: 15,
            ),
          ),
        ),
        Positioned(
          top: 30,
          left: 95,
          child: Container(
            color: Color(0xFFDFEFD9),
            width: 10,
            height: 71,
          ),
        )
      ],
    );
  }
}
