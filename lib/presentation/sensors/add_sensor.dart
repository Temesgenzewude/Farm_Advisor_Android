import 'package:agino_client/presentation/sensors/new_sensor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddField extends StatelessWidget {
  const AddField({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: const Color(0xFF203825),
            elevation: 0,
            title: Image.asset("assets/logo1.png"),
            //const Text("agino",
            //     style: TextStyle(
            //         color: Colors.green,
            //         fontWeight: FontWeight.w900,
            //         fontSize: 28)),
            actions: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    IconButton(icon: const Icon(Icons.add), onPressed: () {}),
                    const SizedBox(width: 10),
                    IconButton(
                        icon: const Icon(Icons.person), onPressed: () {}),
                  ],
                ),
              )
            ]),
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
                  SvgPicture.asset("assets/that.svg"),
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const NewField()));
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
