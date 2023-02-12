import 'package:flutter/material.dart';

class DropDownButton extends StatefulWidget {
  const DropDownButton({super.key});
  @override
  State<DropDownButton> createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<DropDownButton> {
  final items = ['Farm1 name', 'Farm2 name', 'Farm3 name', 'Farm4 name'];
  String? value;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      child: DropdownButton<String>(
        icon: const Icon(Icons.arrow_drop_down,color: Colors.black,),
        iconSize: 36,
        value: value,
        isExpanded: true,
        items: items.map(buildMenuItem).toList(),
        onChanged: (value) => setState(() => this.value = value),
      ),
    );
  }
  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
        ),
      );
}
