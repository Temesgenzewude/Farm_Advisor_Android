import 'package:flutter/material.dart';

class Verefication extends StatefulWidget {
  @override
  State<Verefication> createState() => VereficationState();
}

class VereficationState extends State<Verefication> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool isButtonActive = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            GestureDetector(
              child: Icon(
                Icons.arrow_back_ios,
                color: Color(0xFF5F676C),
              ),
              onTap: () {
                // print("clicked");
              },
            ),
            Text(
              "SIGN UP",
              style: TextStyle(color: Color(0xFF5F676C), fontSize: 15),
            )
          ],
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(15, 15, 10, 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Text(
                "Verification Code",
                style: TextStyle(
                    color: Color(0xFF20382F),
                    fontSize: 24,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Form(
              key: _formKey,
              child: TextFormField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  _formKey.currentState?.validate();
                },
                decoration: InputDecoration(
                  hintText: "Enter Verification Code",
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter verefication code";
                  } else if (value.length == 6) {
                    setState(() {
                      isButtonActive = true;
                    });
                  } else {
                    setState(() {
                      isButtonActive = false;
                    });
                    return "Invalid verefication code";
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
