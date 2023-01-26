import 'package:flutter/material.dart';
import 'package:agino_trial/pages/pageview/page1.dart';
import 'package:agino_trial/pages/pageview/page2.dart';
import 'package:agino_trial/pages/pageview/page3.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
            children: [
              Text(
                "agin",
                style: TextStyle(
                  fontFamily: "ARLRDBD",
                  fontWeight: FontWeight.w900,
                  fontSize: 25,
                  color: Color(0xFF00D600),
                ),
              ),
              Stack(children: [
                Text(
                  "o",
                  style: TextStyle(
                    fontFamily: "ARLRDBD",
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
          ),
          backgroundColor: Color(0xFF20382F)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Stack(
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
            ),
            Text(
              "Smart Farming",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 50,
              width: 300,
              child: PageView(
                controller: _controller,
                children: [
                  Page1(),
                  Page2(),
                  Page3(),
                ],
              ),
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              axisDirection: Axis.horizontal,
              effect: JumpingDotEffect(
                verticalOffset: 10,
                activeDotColor: Color(0xFF00D600),
                dotColor: Color(0xFF263238),
                dotHeight: 10,
                dotWidth: 10,
              ),
            ),
            InkWell(
              onTap: () {

              },
              child: Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                  color: Color(0xFF275342),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                    "SIGN UP WITH AGINO",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?",
                style:TextStyle(fontSize: 16)
                ),
                TextButton(onPressed: (){}, 
                child: Text("Log In", style:TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                )

                )
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
