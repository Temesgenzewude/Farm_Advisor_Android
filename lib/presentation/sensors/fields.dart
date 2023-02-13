import 'package:agino_client/presentation/reusable_widgets/dashboard_custome_appbar.dart';
import 'package:agino_client/presentation/sensors/alert_tile.dart';
import 'package:agino_client/presentation/sensors/components/Field_tile.dart';
import "package:flutter/material.dart";

class Fields extends StatefulWidget {
  final bool? isAlerts;
  const Fields({super.key, this.isAlerts = true});

  @override
  State<Fields> createState() => _FieldsState();
}

class _FieldsState extends State<Fields> {
  final items = ["Farm 1", "Farm 2", "Farm 3"];
  String dropDownValue = "Farm 1";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: DashBoardCustomAppBar(),
        body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            color: const Color.fromARGB(255, 247, 247, 247),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        child: Image.asset("assets/images/farm.png"),
                      ),
                      Container(
                        width: 170,
                        height: 44,
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(9)),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                              alignment: AlignmentDirectional.centerEnd,
                              elevation: 3,
                              style: const TextStyle(
                                  color: Color(0xff20382F),
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                              value: dropDownValue,
                              icon: const Padding(
                                  padding: EdgeInsets.only(left: 28),
                                  child: Icon(Icons.keyboard_arrow_down,
                                      color: Color(0xff20382F))),
                              items: items.map((item) {
                                return DropdownMenuItem(
                                    value: item, child: Text(item));
                              }).toList(),
                              onChanged: (value) {
                                setState(() {
                                  dropDownValue = value!;
                                });
                              }),
                        ),
                      ),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.more_vert))
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  //for alerts
                  widget.isAlerts!
                      ? Container(
                          child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Alerts",
                                style: TextStyle(
                                    color: Color(0xff20382F),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16)),
                            Container(
                              margin: const EdgeInsets.only(left: 5),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 10),
                                    AlertTile(
                                      message:
                                          "Low battery on sensor in field ",
                                      day: "Today",
                                      fieldName: "Field One",
                                    ),
                                    const SizedBox(height: 10),
                                    AlertTile(
                                        message: "GDD exceeded in  field ",
                                        day: "Yesterday ",
                                        fieldName: "Field Two"),
                                    const SizedBox(
                                      height: 50,
                                    ),
                                  ]),
                            )
                          ],
                        ))
                      : Container(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Fields",
                          style: TextStyle(
                              color: Color(0xff20382F),
                              fontWeight: FontWeight.bold,
                              fontSize: 16)),
                      IconButton(onPressed: () {}, icon: const Icon(Icons.add))
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  FieldTile(
                    fieldName: "Field Name one",
                    currentGdd: "376",
                    message: "",
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  FieldTile(
                    fieldName: "Field Name Two",
                    currentGdd: "376",
                    message: "",
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  FieldTile(
                    fieldName: "Field Name Three",
                    currentGdd: "376",
                    message: "",
                  ),
                ],
              ),
            )));
  }
}
