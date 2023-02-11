import 'package:agino_client/presentation/reusable_widgets/dashboard_custome_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddField extends StatelessWidget {
  const AddField({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: DashBoardCustomAppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Material(
                  color: const Color(0xfff7f7f7),
                  elevation: 3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                              color: const Color(0xff5F676C),
                              onPressed: () {},
                              icon: const Icon(Icons.arrow_back_ios_sharp)),
                          const Text("FIELD NAME 1",
                              style: TextStyle(
                                  color: Color(0xff5F676C),
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                      IconButton(
                          color: const Color(0xff5F676C),
                          onPressed: () {},
                          icon: const Icon(Icons.more_vert))
                    ],
                  )),
              const SizedBox(height: 88),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Container(
                  //     height: 203,
                  //     width: 203,
                  //     decoration: const BoxDecoration(
                  //       shape: BoxShape.circle,
                  //       image: DecorationImage(
                  //           image: AssetImage("assets/sensor2.png"),
                  //           fit: BoxFit.cover),
                  //     )),
                  Text("Add Logo"),
                  const SizedBox(height: 46),
                  const Text("Add a sensor",
                      style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff20382f))),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text.rich(TextSpan(
                        text:
                            "     Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff5F676C)))),
                  ),
                  const SizedBox(height: 46),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: SizedBox(
                      width: double.infinity,
                      height: 48,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              backgroundColor: const Color(0xff275342)),
                          onPressed: () {
                            Get.toNamed("");
                          },
                          child: const Text("ADD MY FIRST SENSOR")),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
