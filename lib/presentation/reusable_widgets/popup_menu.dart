import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReusableTopPopMenu extends StatefulWidget {
  const ReusableTopPopMenu({super.key});

  @override
  State<ReusableTopPopMenu> createState() => _ReusableTopPopMenuState();
}

class _ReusableTopPopMenuState extends State<ReusableTopPopMenu> {
  void handleClick(int value) {
    if (value == 1) {
      Get.toNamed("/reset-all-gdd");
    } else {
      Get.toNamed("/");
    }
  }

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        itemBuilder: (context) => [
              const PopupMenuItem<int>(
                value: 1,
                child: Text("Reset GDD on all sensors"),
              ),
              const PopupMenuItem<int>(
                value: 2,
                child: Text("Edit Field"),
              ),
              const PopupMenuItem<int>(
                value: 3,
                child: Text("Delete Field"),
              ),
            ],
        onSelected: (value) => handleClick(value));
  }
}

class ReusableSensorsPopMenu extends StatefulWidget {
  const ReusableSensorsPopMenu({super.key});

  @override
  State<ReusableSensorsPopMenu> createState() => _ReusableSensorsPopMenuState();
}

class _ReusableSensorsPopMenuState extends State<ReusableSensorsPopMenu> {
  //handle click to sensors popup menu
  void handleClick(int value) {
    if (value == 1) {
      Get.toNamed("/reset-gdd");
    } else {
      Get.toNamed("/");

    }
  }

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (context) => [
        const PopupMenuItem<int>(
          value: 1,
          child: Text("Reset GDD"),
        ),
        const PopupMenuItem<int>(
          value: 2,
          child: Text("Edit Sensor"),
        ),
        const PopupMenuItem<int>(
          value: 3,
          child: Text("Delete Sensor"),
        ),
      ],
      onSelected: (value) => handleClick(value),
    );
  }
}
