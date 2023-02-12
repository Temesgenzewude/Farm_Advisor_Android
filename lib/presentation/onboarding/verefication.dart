import 'package:agino_client/presentation/reusable_widgets/custom_button.dart';
import 'package:agino_client/presentation/reusable_widgets/custome_text_widget.dart';
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
            const TextWidget(text: "SIGN UP", fontWeight: FontWeight.w400, fontSize: 16, color: Colors.black)
          ],
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(15, 15, 10, 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const TextWidget(text: "Verification", fontWeight: FontWeight.w400, fontSize: 16, color: Colors.black),
                Form(
                  key: _formKey,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      _formKey.currentState?.validate();
                    },
                    decoration: const InputDecoration(
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
                ),
              ],
            ),
            CustomButton(text: "Continue", onTap: (){})
          ],
        ),
      ),
    );
  }
}
