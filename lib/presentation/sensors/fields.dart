import 'package:agino_client/application/FieldController/field_controller.dart';
import 'package:agino_client/application/FramControllers/farm_controller.dart';
import 'package:agino_client/domain/FarmModels/farm.dart';
import 'package:agino_client/domain/FieldModel/field.dart';
import 'package:agino_client/presentation/reusable_widgets/dashboard_custome_appbar.dart';
import 'package:agino_client/presentation/sensors/alert_tile.dart';
import 'package:agino_client/presentation/sensors/components/Field_tile.dart';
import "package:flutter/material.dart";
import 'package:get/get.dart';

class Fields extends StatefulWidget {
  final bool? isAlerts;

  Fields({
    super.key,
    this.isAlerts = true,
  });

  @override
  State<Fields> createState() => _FieldsState();
}

class _FieldsState extends State<Fields> {
  var farmController = Get.find<FarmController>();
  @override
  Widget build(BuildContext context) {
    var farms = farmController.farms;
    String dropDownValue = farms[0].name!;
    return Scaffold(
        appBar: DashBoardCustomAppBar(),
        body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            color: const Color.fromARGB(255, 247, 247, 247),
            child: SingleChildScrollView(
              child: GetBuilder<FieldController>(
                  builder: (fieldController) => Column(
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
                                      items: farms.map((item) {
                                        return DropdownMenuItem(
                                            value: item,
                                            child: Text(item.name!));
                                      }).toList(),
                                      onChanged: (value) {
                                        setState(() {
                                          dropDownValue = value!.toString();
                                        });
                                      }),
                                ),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.more_vert))
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
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
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
                                                message:
                                                    "GDD exceeded in  field ",
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
                              IconButton(
                                  onPressed: () {}, icon: const Icon(Icons.add))
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),

                          // ListView.builder(
                          //   itemCount: fieldController.fieldList.length,
                          //   itemBuilder: (context, index) {
                          //     return Column(
                          //       children: [
                          //         FieldTile(
                          //             fieldName:
                          //                 fieldController.fieldList[index].name,
                          //             currentGdd: fieldController
                          //                 .fieldList[index].currentGDD
                          //                 .toString(),
                          //             message:
                          //                 'your cutting date is ${fieldController.fieldList[index].cuttingDateEstimated}')
                          //       ],
                          //     );
                          //   },
                          // )
                        ],
                      )),
            )));
  }
}
