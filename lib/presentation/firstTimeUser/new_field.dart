import 'package:agino_client/presentation/reusable_widgets/custom_button.dart';
import 'package:agino_client/presentation/reusable_widgets/custom_drop_down.dart';
import 'package:agino_client/presentation/reusable_widgets/custome_text_widget.dart';
import 'package:agino_client/presentation/sensors/add_sensor.dart';
import 'package:flutter/material.dart';

class NewField extends StatefulWidget {
  const NewField({super.key});

  @override
  State<NewField> createState() => _NewFieldState();
}

class _NewFieldState extends State<NewField> {
  var _isButtonActive = false;
  TextEditingController fieldNameController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  List<String> items = ["Farm Name 1"];
  String dropDownValue = "Farm Name 1";

  void check() {
    if (fieldNameController.text.isNotEmpty &&
        locationController.text.isNotEmpty) {
      setState(() {
        _isButtonActive = true;
      });
    } else {
      setState(() {
        _isButtonActive = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'NEWFIELD',
          style: TextStyle(
              color: Color(0xFF5F676C),
              fontSize: 14,
              fontWeight: FontWeight.w500),
        ),
        backgroundColor: const Color(0xFFF7F7F7),
        leading: GestureDetector(
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(18.0),
        color: const Color.fromARGB(48, 247, 247, 247),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text("Farm",
                  style: TextStyle(color: Color(0xff5f676c), fontSize: 12)),
              const SizedBox(height: 8),
              DropDownButton(items: items, dropDownValue: dropDownValue),
              const SizedBox(height: 20),
              const Text("Field Name",
                  style: TextStyle(color: Color(0xff5f676c), fontSize: 12)),
              const SizedBox(height: 8),
              TextFormField(
                controller: fieldNameController,
                onEditingComplete: () {
                  check();
                },
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.only(top: 10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(7),
                    ),
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'Enter field name',
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const SizedBox(height: 20),
              const Text("Altitude above sea level",
                  style: TextStyle(color: Color(0xff5f676c), fontSize: 12)),
              const SizedBox(height: 8),
              TextFormField(
                keyboardType: TextInputType.number,
                controller: locationController,
                onEditingComplete: () {
                  check();
                },
                validator: (value) {},
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.only(top: 10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(7),
                    ),
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'Enter meters',
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ),
            ]),
            Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                width: double.infinity,
                height: 80,
                decoration: const BoxDecoration(),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                        backgroundColor: const Color(0xff275342),
                        disabledForegroundColor: const Color(0xffffffff),
                        disabledBackgroundColor:
                            const Color.fromARGB(128, 39, 83, 66)),
                    onPressed: _isButtonActive
                        ? () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SensorPage()));
                          }
                        : null,
                    child: const Text("ADD MY FIRST FIELD")))
          ],
        ),
      ),
    );
  }
}
