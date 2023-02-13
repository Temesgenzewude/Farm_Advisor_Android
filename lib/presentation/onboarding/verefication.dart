import 'package:agino_client/application/auth/auth_controller.dart';
import 'package:agino_client/domain/auth/signup_model.dart';
import 'package:agino_client/presentation/reusable_widgets/custom_button.dart';
import 'package:agino_client/presentation/reusable_widgets/custome_text_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Verefication extends StatefulWidget {
  final String verificationId;

  const Verefication({super.key, required this.verificationId});

  @override
  State<Verefication> createState() => VereficationState(verificationId);
}

class VereficationState extends State<Verefication> {
  final String verificationId;
  TextEditingController smsController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool isButtonActive = false;

  VereficationState(this.verificationId);
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
            const TextWidget(
                text: "SIGN UP",
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Colors.black)
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
                const TextWidget(
                    text: "Verification",
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.black),
                Form(
                  key: _formKey,
                  child: TextFormField(
                    controller: smsController,
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
            CustomButton(
                text: "Continue",
                onTap: () {
                  FirebaseAuth auth = FirebaseAuth.instance;
                  final smsCode = smsController.text.trim();
                  final _credential = PhoneAuthProvider.credential(
                      verificationId: verificationId, smsCode: smsCode);
                  auth.signInWithCredential(_credential).then((result) {
                    print(result.user!.phoneNumber);
                    Get.toNamed("welcome-screen");

                    // var phone = result.user!.phoneNumber;
                    // if (phone != null) {
                    //   SignUpBody signUpBody = SignUpBody(phoneNumber: phone);
                    //   authController.registration(signUpBody).then((status) {

                    //     if (status.isSuccess) {
                    //       print("Successfully signed up");

                    //       Get.toNamed("welcome-screen");

                    //     }
                    //   });
                    // }

                    // Get.snackbar("Error", "Please check your phone number");
                  }).catchError((e) {
                    print(e.toString());
                    Get.snackbar("Error", "Something went wrong");
                    Get.toNamed("/");
                  });
                })
          ],
        ),
      ),
    );
  }
}
