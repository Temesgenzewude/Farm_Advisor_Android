import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Terms extends StatefulWidget {
  const Terms({super.key});
  @override
  State<Terms> createState() => TermsState();
}

class TermsState extends State<Terms> {
  bool checkboxValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CloseButton(
              color: Color(0xFF5F676C),
              onPressed: () {},
            ),
            Text(
              "TERMS & CONDITONS",
              style: TextStyle(color: Color(0xFF5F676C), fontSize: 15),
            )
          ],
        ),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                "TERMS & CONDITIONS",
                style: TextStyle(color: Color(0xFF5F676C), fontSize: 20),
              ),
            ),
            Container(
              width: 10,
              height: 10,
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sodales venenatis nisi, ut pretium ipsum sodales nec. In facilisis egestas odio congue luctus. Ut aliquam ac nulla a cursus. Sed in consectetur mi, tempus lobortis lacus. Phasellus et libero ipsum. Maecenas euismod viverra purus. Praesent pharetra tellus ut finibus ultrices. Vivamus eleifend consectetur ullamcorper. Aliquam bibendum ante ut enim suscipit, et porta odio eleifend. Nullam commodo facilisis metus, eget ultricies sapien aliquet quis. Nam dictum dapibus sapien, vitae varius nunc tristique in. Phasellus risus est, rutrum ut euismod sed, suscipit eu libero. Praesent semper pulvinar ullamcorper.Aliquam suscipit, sapien eget rhoncus iaculis, sapien odio cursus ipsum, a pellentesque enim mi eu mauris.Mauris velit nulla, luctus et fermentum ut, iaculis at elit. Nunc lobortis gravida lacus, quis vestibulum nulla blandit nec. Suspendisse aliquam condimentum tincidunt. Integer laoreet eros nec sodales fringilla. Nullam in eros sed elit porttitor consectetur ut sed lectus. Nulla tempus metus ac nibh cursus hendrerit. Morbi et massa hendrerit, vehicula lacus eget, ultricies felis. Nullam mollis elit in dapibus malesuada. Nullam pretium lacus quis turpis porta congue. In a elit semper, scelerisque arcu eget, egestas risus. Morbi diam enim, condimentum efficitur pharetra quis, egestas eu magna. Aenean vitae odio at arcu porttitor aliquam a quis justo.Vivamus dignissim tortor neque, ut suscipit erat volutpat nec. Proin mattis neque odio, vitae pulvinar massa convallis ac. Proin nec erat pellentesque, gravida nisl quis, fringilla massa. Sed feugiat fermentum pharetra. Duis consequat dapibus nunc non elementum. Suspendisse luctus lorem in elit scelerisque iaculis. Nunc odio ante, cursus eget eleifend sed, efficitur sit amet orci. Cras quis porttitor felis. Proin vitae lobortis metus, sit amet sollicitudin nunc. Aenean diam mi, consequat vitae quam et, aliquam suscipit ex. Aenean imperdiet id nulla et tempus. Quisque scelerisque libero non velit lobortis rhoncus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sodales venenatis nisi, ut pretium ipsum sodales nec. In facilisis egestas odio congue luctus. Ut aliquam ac nulla a cursus. Sed in consectetur mi, tempus lobortis lacus. Phasellus et libero ipsum. Maecenas euismod viverra purus. Praesent pharetra tellus ut finibus ultrices. Vivamus eleifend consectetur ullamcorper. Aliquam bibendum ante ut enim suscipit, et porta odio eleifend. Nullam commodo facilisis metus, eget ultricies sapien aliquet quis. Nam dictum dapibus sapien, vitae varius nunc tristique in. Phasellus risus est, rutrum ut euismod sed, suscipit eu libero. Praesent semper pulvinar ullamcorper.Aliquam suscipit, sapien eget rhoncus iaculis, sapien odio cursus ipsum, a pellentesque enim mi eu mauris.Mauris velit nulla, luctus et fermentum ut, iaculis at elit. Nunc lobortis gravida lacus, quis vestibulum nulla blandit nec. Suspendisse aliquam condimentum tincidunt. Integer laoreet eros nec sodales fringilla. Nullam in eros sed elit porttitor consectetur ut sed lectus. Nulla tempus metus ac nibh cursus hendrerit. Morbi et massa hendrerit, vehicula lacus eget, ultricies felis. Nullam mollis elit in dapibus malesuada. Nullam pretium lacus quis turpis porta congue. In a elit semper, scelerisque arcu eget, egestas risus. Morbi diam enim, condimentum efficitur pharetra quis, egestas eu magna. Aenean vitae odio at arcu porttitor aliquam a quis justo.Vivamus dignissim tortor neque, ut suscipit erat volutpat nec. Proin mattis neque odio, vitae pulvinar massa convallis ac. Proin nec erat pellentesque, gravida nisl quis, fringilla massa. Sed feugiat fermentum pharetra. Duis consequat dapibus nunc non elementum. Suspendisse luctus lorem in elit scelerisque iaculis. Nunc odio ante, cursus eget eleifend sed, efficitur sit amet orci. Cras quis porttitor felis. Proin vitae lobortis metus, sit amet sollicitudin nunc. Aenean diam mi, consequat vitae quam et, aliquam suscipit ex. Aenean imperdiet id nulla et tempus. Quisque scelerisque libero non velit lobortis rhoncus.",
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 50),
                      child: Row(
                        children: [
                          Checkbox(
                            value: checkboxValue,
                            onChanged: (bool? value) {
                              if (value != null) {
                                setState(() {
                                  checkboxValue = value;
                                });
                              }
                            },
                          ),
                          Text(" agree terms and conditions")
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: InkWell(
          onTap: () {
            // print("clicked");
          },
          child: Container(
            margin: EdgeInsets.fromLTRB(15, 10, 15, 10),
            height: 50,
            width: 250,
            decoration: BoxDecoration(
              color: checkboxValue
                  ? Color(0xFF275342)
                  : Color(0xFF275342).withOpacity(0.5),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child: Text(
                "AGREE TO TERMS & CONDITIONS",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
