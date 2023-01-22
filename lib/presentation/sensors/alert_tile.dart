import 'package:flutter/material.dart';

class AlertTile extends StatelessWidget {
  String message;
  String fieldName;
  String day;
  AlertTile(
      {super.key,
      required this.message,
      required this.day,
      required this.fieldName});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(9),
      ),
      child: ListTile(
        leading: Container(
            padding:
                const EdgeInsets.only(bottom: 7, top: 4, left: 4, right: 4),
            decoration: const BoxDecoration(
              color: Color(0xffFCF3EB),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.warning_rounded,
              color: Colors.amberAccent,
            )),
        title: Text.rich(
            TextSpan(children: <TextSpan>[
              TextSpan(
                text: message,
              ),
              TextSpan(
                  text: fieldName,
                  style: const TextStyle(fontWeight: FontWeight.bold))
            ]),
            style: const TextStyle(fontSize: 15)),
        subtitle: Text(day),
      ),
    );
  }
}
