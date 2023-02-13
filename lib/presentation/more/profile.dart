import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => ProfileState();
}

class ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      appBar: AppBar(
        title: Row(
          children: [
            CloseButton(
              color: Color(0xFF5F676C),
              onPressed: () {},
            ),
            Text(
              "Profile",
              style: TextStyle(color: Color(0xFF5F676C), fontSize: 15),
            )
          ],
        ),
        backgroundColor: Colors.white.withOpacity(0.8),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 20, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(margin: EdgeInsets.only(bottom: 5), child: Text("Phone")),
            Container(
              width: 350,
              height: 50,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 15),
                child: Text("+ 123 456 789", style: TextStyle(fontSize: 18)),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 15),
              child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In in orci lacus. "),
            ),
            Container(
              width: 350,
              height: 50,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Terms and Conditons", style: TextStyle(fontSize: 18)),
                    GestureDetector(
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
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
              margin: EdgeInsets.only(left: 120,top: 300),
              child: GestureDetector(
                child: Text(
                  "Delete Account",
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                onTap: (() {
                  print("clicked");
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
