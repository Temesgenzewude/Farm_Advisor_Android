import "package:flutter/material.dart";

class FieldTile extends StatelessWidget {
  String fieldName;
  String currentGdd;
  String message;

  FieldTile(
      {super.key,
      required this.fieldName,
      required this.currentGdd,
      required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(9),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage(
                  "assets/images/farm.png",
                ),
                radius: 33,
              ),
              title: Text.rich(
                  TextSpan(
                      text: fieldName,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                  style: const TextStyle(fontSize: 15)),
              subtitle: Text("current GDD-$currentGdd"),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text.rich(
                TextSpan(children: <TextSpan>[
                  TextSpan(
                    text: "Your optimal cutting day is  ",
                  ),
                  TextSpan(
                      text: "3 days",
                      style: TextStyle(fontWeight: FontWeight.bold))
                ]),
                style: TextStyle(fontSize: 15, color: Color(0xff275342))),
          ],
        ),
      ),
    );
  }
}
