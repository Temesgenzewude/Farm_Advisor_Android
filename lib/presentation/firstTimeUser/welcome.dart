
import 'package:agino_client/presentation/reusable_widgets/dashboard_custome_appbar.dart';
import 'package:flutter/material.dart';

import '../reusable_widgets/custom_button.dart';


class Welcome extends StatefulWidget {
  static const routeName = "/welcome";

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DashBoardCustomAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 203,
            width: 203,
            child: Image.asset("assets/images/farm.png"),
          ),
          // const CircleAvatar(
          //   radius: 101,
          //   backgroundColor: Color(0xFFA9EAE8),

          // ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Welcome to Agino",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
              padding: EdgeInsets.all(18),
              child: Text(
                  "Wellcome to agino which is one of the most amazing projects done by students in addis ababa university which is based on enterprise application development which helps student to develop their skills in enterprise application development")),
          CustomButton(
            color: const Color.fromARGB(255, 4, 90, 57),
            text: "Create NewFarm",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NewFarm()),
              );
              
              
            },
          )
        ],
      ),
    );
  }
}
