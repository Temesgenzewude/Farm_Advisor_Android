import 'package:agino_client/presentation/onboarding/verefication.dart';
import 'package:agino_client/presentation/reusable_widgets/custome_text_widget.dart';
import 'package:agino_client/routes_helper/routes_helpers.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../application/auth/auth_controller.dart';
import '../../domain/auth/signup_model.dart';

class SignUp extends StatefulWidget {
  SignUp({super.key});
  @override
  State<SignUp> createState() => SignUpState();
}

class SignUpState extends State<SignUp> {
  FirebaseAuth auth = FirebaseAuth.instance;
  var isLoading = false;
  final countrypicker = const FlCountryCodePicker();

  bool isButtonActive = false;
  CountryCode? countryCode;
  TextEditingController phoneController = TextEditingController();
  TextEditingController _codeController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void register(String phoneNumber, BuildContext context) async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      timeout: const Duration(seconds: 60),
      verificationCompleted: (AuthCredential authCredential) {},
      verificationFailed: (FirebaseAuthException e) {
        print(e.message);
      },
      codeSent: (String verificationId, int? resendToken) {
        setState(() {
          isLoading = false;
        });
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Verefication(
                      verificationId: verificationId,
                    )));
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        verificationId = verificationId;
        print(verificationId);
        print("Timout");
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            GestureDetector(
              child: const Icon(
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
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
                margin: const EdgeInsets.all(10),
                child: const TextWidget(
                    text: "Sign up with your phone number",
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    color: Colors.black)),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Form(
                key: _formKey,
                child: TextFormField(
                  controller: phoneController,
                  keyboardType: TextInputType.phone,
                  textInputAction: TextInputAction.done,
                  maxLines: 1,
                  onChanged: (value) {
                    _formKey.currentState?.validate();
                  },
                  decoration: InputDecoration(
                      hintText: "Enter you phone number",
                      prefixIcon: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 6),
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        child: Row(mainAxisSize: MainAxisSize.min, children: [
                          GestureDetector(
                            onTap: () async {
                              final code = await countrypicker.showPicker(
                                  context: context);
                              setState(() {
                                countryCode = code;
                              });
                            },
                            child: Row(
                              children: [
                                Container(
                                  child: countryCode != null
                                      ? countryCode!.flagImage
                                      : null,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 6),
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Text(
                                    countryCode?.dialCode ?? "+251",
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ]),
                      ),
                      labelStyle: TextStyle(color: Colors.grey[600])),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter phone number";
                    } else if (value.length == 9) {
                      setState(() {
                        isButtonActive = true;
                      });
                    } else {
                      setState(() {
                        isButtonActive = false;
                      });
                      return "Invalid Phone Number";
                    }
                  },
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
                child: isLoading
                    ? Column(
                        children: [
                          SizedBox(
                            height: 35,
                            width: 35,
                            child: CircularProgressIndicator(),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("please wait for sms")
                        ],
                      )
                    : null)
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: InkWell(
          onTap: () {
            setState(() {
              isLoading = true;
            });
            final code = countryCode?.dialCode ?? "+251";
            final phoneNumber = code + phoneController.text;
            register(phoneNumber, context);
          },
          child: Container(
            margin: EdgeInsets.fromLTRB(15, 10, 15, 10),
            height: 50,
            width: 250,
            decoration: BoxDecoration(
              color: isButtonActive
                  ? Color(0xFF275342)
                  : Color(0xFF275342).withOpacity(0.5),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child: Text(
                "Continue",
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
