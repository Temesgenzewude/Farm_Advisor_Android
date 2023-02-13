import 'package:flutter/material.dart';

class DropDownButton extends StatefulWidget {
  List<String> items;
  String dropDownValue;
  DropDownButton({super.key, required this.items, required this.dropDownValue});
  @override
  State<DropDownButton> createState() =>
      _DropDownButtonState(items, dropDownValue);
}

class _DropDownButtonState extends State<DropDownButton> {
  List<String> items;
  // final items = ['Farm1 name', 'Farm2 name', 'Farm3 name', 'Farm4 name'];
  String dropDownValue;

  _DropDownButtonState(this.items, this.dropDownValue);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
            alignment: AlignmentDirectional.centerEnd,
            elevation: 3,
            style: const TextStyle(
              color: Color(0xff20382F),
              fontSize: 18,
            ),
            value: dropDownValue,
            icon: const Padding(
                padding: EdgeInsets.only(left: 28),
                child:
                    Icon(Icons.keyboard_arrow_down, color: Color(0xff20382F))),
            items: items.map((item) {
              return DropdownMenuItem(value: item, child: Text(item));
            }).toList(),
            onChanged: (value) {
              setState(() {
                dropDownValue = value!;
              });
            }),
      ),
    );
  }
}
