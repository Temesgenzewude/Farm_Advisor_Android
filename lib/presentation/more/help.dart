import 'package:flutter/material.dart';

class Help extends StatefulWidget {

  @override
  State<Help> createState() => HelpState();
}

class HelpState extends State<Help> {
   @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor:Colors.white.withOpacity(0.9),
      appBar: AppBar(
        title: Row(
          children: [
            CloseButton(
              color: Color(0xFF5F676C),
              onPressed: () {},
            ),
            Text(
              "HELP",
              style: TextStyle(color: Color(0xFF5F676C), fontSize: 15),
            )
          ],
        ),
        backgroundColor: Colors.white.withOpacity(0.8),
      ),
      body: Container(
        
        margin: EdgeInsets.only(left: 20,top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.,
          children: <Widget>[
            Text("FAQ",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20
              ),),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              width: 350,
              height: 50,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Question 1",
                      style: TextStyle(
                        fontSize: 18,
                        
                      )
                      ),
                    GestureDetector(
                child: Icon(
                Icons.keyboard_arrow_down_outlined,
                color: Color(0xFF5F676C),
                size: 20,
                ),
                onTap: () {
                // print("clicked");
                },
            ),
                  ],
                ),
              ),
            ),
             Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              width: 350,
              height: 50,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Question 2",
                      style: TextStyle(
                        fontSize: 18,
                        
                      )
                      ),
                    GestureDetector(
                child: Icon(
                Icons.keyboard_arrow_down_outlined,
                color: Color(0xFF5F676C),
                size: 20,
                ),
                onTap: () {
                // print("clicked");
                },
            ),
                  ],
                ),
              ),
            ),
             Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              width: 350,
              height: 50,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Question 3",
                      style: TextStyle(
                        fontSize: 18,
                        
                      )
                      ),
                    GestureDetector(
                child: Icon(
                Icons.keyboard_arrow_down_outlined,
                color: Color(0xFF5F676C),
                size: 20,
                ),
                onTap: () {
                // print("clicked");
                },
            ),
                  ],
                ),
              ),
            ),
             Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              width: 350,
              height: 50,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Question 4",
                      style: TextStyle(
                        fontSize: 18,
                        
                      )
                      ),
                    GestureDetector(
                child: Icon(
                Icons.keyboard_arrow_down_outlined,
                color: Color(0xFF5F676C),
                size: 20,
                ),
                onTap: () {
                // print("clicked");
                },
            ),
            
                  ],
                ),
              ),
            ),
             Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              width: 350,
              height: 50,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Question 5",
                      style: TextStyle(
                        fontSize: 18,
                        
                      )
                      ),
                    GestureDetector(
                child: Icon(
                Icons.keyboard_arrow_down_outlined,
                color: Color(0xFF5F676C),
                size: 20,
                ),
                onTap: () {
                // print("clicked");
                },
            ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}