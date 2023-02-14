import 'package:agino_client/presentation/reusable_widgets/custom_button.dart';
import 'package:agino_client/presentation/reusable_widgets/dashboard_custome_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddFarmField extends StatefulWidget {
  @override
  State<AddFarmField> createState() => _AddFarmFieldState();
}

class _AddFarmFieldState extends State<AddFarmField> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DashBoardCustomAppBar(),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 10,
                      width: 10,
                      child: Image.asset("assets/images/farm.png"),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
                      "Farm name",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.more_vert),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 45,
            width: 45,
            child: Image.asset("assets/images/farm.png"),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Add a field",
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.w500,
            ),
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
                "Add the field to agino which is one of the most amazing projects done by students in addis ababa university which is based on enterprise application development which helps student to develop their skills in enterprise application development",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              )),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
            color: const Color.fromARGB(255, 4, 90, 57),
            text: "ADD MY FIRST FIELD",
            onTap: () {
              Get.toNamed('new-field');
            },
          )
        ],
      ),
    );
  }
}
