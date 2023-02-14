import 'package:agino_client/application/FieldController/field_controller.dart';
import 'package:agino_client/application/FramControllers/farm_controller.dart';
import 'package:agino_client/presentation/reusable_widgets/custom_drop_down.dart';
import 'package:agino_client/presentation/sensors/components/qr_view.dart';
import 'package:agino_client/presentation/sensors/fields.dart';
import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class AddSensor extends StatefulWidget {
  const AddSensor({super.key});

  @override
  State<AddSensor> createState() => _AddSensorState();
}

class _AddSensorState extends State<AddSensor> {
  var farmController = Get.find<FarmController>();

  GoogleMapController? mapController; //contrller for Google map
  CameraPosition? cameraPosition;
  LatLng startLocation = LatLng(8.990152, 38.98368);
  String location = "Location Name:";
  String lat = "8.990152";
  String long = "38.98368";
  final _formKey = GlobalKey<FormState>();
  final _isFormValid = true;
  var _isButtonActive = false;
  final _serielNumberController = TextEditingController();
  final _locationController = TextEditingController();
  final _CGDController = TextEditingController();
  final _sensorInstallationController = TextEditingController();
  final _cuttingDateController = TextEditingController();
  DateTime _dateTime = DateTime.now();
  ScrollPhysics? _physics = null;

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  final farmItems = ['Farm1 name', 'Farm2 name', 'Farm3 name', 'Farm4 name'];
  final fieldItems = [
    'Field1 name',
    'Field2 name',
    'Field3 name',
    'Field4 name'
  ];
  List<String> months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];

  @override
  void initState() {
    super.initState();

    _CGDController.text = "476";
    _sensorInstallationController.text =
        '${_dateTime.day} ${months[_dateTime.month - 1]} ${_dateTime.year}';
    _cuttingDateController.text = "";
  }

  @override
  void dispose() {
    _serielNumberController.dispose();
    _locationController.dispose();
    _CGDController.dispose();
    _sensorInstallationController.dispose();
    _cuttingDateController.dispose();

    super.dispose();
  }

  _showDatePicker(TextEditingController controller) {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2023),
            lastDate: DateTime(2030))
        .then((value) {
      setState(() {
        controller.text =
            '${value!.day} ${months[value.month - 1]} ${value.year}';
      });
    });
  }

  void check() {
    if (_serielNumberController.text.isNotEmpty &&
        _CGDController.text.isNotEmpty &&
        _sensorInstallationController.text.isNotEmpty &&
        _cuttingDateController.text.isNotEmpty) {
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
    var farm = farmController.farms[0];
    return Scaffold(
        appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 247, 247, 247),
            foregroundColor: const Color(0xff5f676c),
            leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios_sharp),
                onPressed: () {
                  Navigator.pop(context);
                }),
            title: const Text("NEW SENSOR")),
        body: ListView(
          physics: _physics,
          children: [
            Container(
              color: const Color.fromARGB(255, 247, 247, 247),
              child: Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Farm",
                            style: TextStyle(
                                color: Color(0xff5f676c), fontSize: 12)),
                        const SizedBox(height: 8),
                        DropDownButton(
                          items: farmItems,
                          dropDownValue: 'Farm1 name',
                        ),
                        const SizedBox(height: 8),
                        const Text("Field",
                            style: TextStyle(
                                color: Color(0xff5f676c), fontSize: 12)),
                        const SizedBox(height: 8),
                        DropDownButton(
                          items: fieldItems,
                          dropDownValue: "Field1 name",
                        ),
                        const SizedBox(height: 8),
                        const Text("Serial Number",
                            style: TextStyle(
                                color: Color(0xff5f676c), fontSize: 12)),
                        const SizedBox(height: 8),
                        TextFormField(
                            controller: _serielNumberController,
                            keyboardType: TextInputType.number,
                            onEditingComplete: () {
                              check();
                            },
                            validator: (value) {
                              if (value!.isEmpty && value.length < 6) {
                                return "enter valid seriel number";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                  color: Colors.grey,
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => MQrView()));
                                  },
                                  icon: const Icon(Icons.qr_code_scanner)),
                              // suffixIconColor: const Color(0xff5F676C),

                              hintText: "Scan or Enter serial number",
                              hintStyle: const TextStyle(
                                color: Colors.grey,
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 15),
                              filled: true,
                              fillColor: Colors.white,
                              border: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromARGB(255, 247, 247, 247))),
                              enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromARGB(255, 247, 247, 247))),
                              focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromARGB(255, 247, 247, 247))),
                            )),
                        const SizedBox(height: 20),
                        const Text("Sensor Location",
                            style: TextStyle(
                                color: Color(0xff5f676c), fontSize: 12)),
                        const SizedBox(height: 8),
                        TextFormField(
                            readOnly: true,
                            controller: _locationController,
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                  color: Colors.grey,
                                  onPressed: () {},
                                  icon: const Icon(Icons.close)),
                              hintStyle: const TextStyle(color: Colors.grey),
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 15),
                              filled: true,
                              fillColor: Colors.white,
                              border: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromARGB(255, 247, 247, 247))),
                              enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromARGB(255, 247, 247, 247))),
                              focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromARGB(255, 247, 247, 247))),
                            )),
                        GestureDetector(
                          onTapDown: (TapDownDetails details) {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => const MapPage()));
                            setState(() {
                              // _physics = NeverScrollableScrollPhysics();
                              _physics == null
                                  ? _physics = NeverScrollableScrollPhysics()
                                  : _physics = null;
                            });
                          },
                          child: Container(
                            height: 300,
                            child: Stack(children: [
                              GoogleMap(
                                //Map widget from google_maps_flutter package
                                zoomGesturesEnabled:
                                    true, //enable Zoom in, out on map
                                initialCameraPosition: CameraPosition(
                                  //innital position in map
                                  target: startLocation, //initial position
                                  zoom: 11.0, //initial zoom level
                                ),
                                mapType: MapType.normal, //map type
                                onMapCreated: (controller) {
                                  //method called when map is created
                                  setState(() {
                                    mapController = controller;
                                  });
                                },
                                onCameraMove: (CameraPosition cameraPositiona) {
                                  cameraPosition =
                                      cameraPositiona; //when map is dragging
                                },
                                onCameraIdle: () async {
                                  //when map drag stops
                                  // List<Placemark> placemarks = await placemarkFromCoordinates(
                                  //     cameraPosition!.target.latitude,
                                  //     cameraPosition!.target.longitude);
                                  setState(() {
                                    //get place name from lat and lang
                                    lat = cameraPosition!.target.latitude
                                        .toStringAsPrecision(7);
                                    long = cameraPosition!.target.longitude
                                        .toStringAsPrecision(7);
                                    _locationController.text = '${lat},${long}';
                                  });
                                },
                              ),
                              Center(
                                //picker image on google map
                                child: Image.asset(
                                  "assets/images/picker.png",
                                  width: 25,
                                ),
                              ),
                            ]),
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                            "Locate the sensor on the field by moving the pin around",
                            style: TextStyle(
                                color: Color(0xff5f676c), fontSize: 12)),
                        const SizedBox(height: 20),
                        const Text("Default CGD",
                            style: TextStyle(
                                color: Color(0xff5f676c), fontSize: 12)),
                        const SizedBox(height: 8),
                        TextFormField(
                            controller: _CGDController,
                            onEditingComplete: () {
                              check();
                            },
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                  color: Colors.grey,
                                  onPressed: () {},
                                  icon: const Icon(Icons.info_outline)),
                              hintStyle: const TextStyle(color: Colors.grey),
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 15),
                              filled: true,
                              fillColor: Colors.white,
                              border: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromARGB(255, 247, 247, 247))),
                              enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromARGB(255, 247, 247, 247))),
                              focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromARGB(255, 247, 247, 247))),
                            )),
                        const SizedBox(height: 8),
                        const Text("Sensor installation date",
                            style: TextStyle(
                                color: Color(0xff5f676c), fontSize: 12)),
                        const SizedBox(height: 8),
                        TextFormField(
                            controller: _sensorInstallationController,
                            onEditingComplete: () {
                              check();
                            },
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                  color: Colors.grey,
                                  onPressed: () {
                                    _showDatePicker(
                                        _sensorInstallationController);
                                  },
                                  icon: const Icon(Icons.calendar_today)),
                              hintStyle: const TextStyle(color: Colors.grey),
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 15),
                              fillColor: Colors.white,
                              border: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromARGB(255, 247, 247, 247))),
                              enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromARGB(255, 247, 247, 247))),
                              focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromARGB(255, 247, 247, 247))),
                            )),
                        const SizedBox(height: 8),
                        const Text("Last cutting date",
                            style: TextStyle(
                                color: Color(0xff5f676c), fontSize: 12)),
                        const SizedBox(height: 8),
                        TextFormField(
                            controller: _cuttingDateController,
                            onEditingComplete: () {
                              check();
                            },
                            decoration: InputDecoration(
                              hintText: "Select Date",
                              suffixIcon: IconButton(
                                  color: Colors.grey,
                                  onPressed: () {
                                    _showDatePicker(_cuttingDateController);
                                  },
                                  icon: const Icon(Icons.calendar_today)),
                              hintStyle: const TextStyle(color: Colors.grey),
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 15),
                              filled: true,
                              fillColor: Colors.white,
                              border: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromARGB(255, 247, 247, 247))),
                              enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromARGB(255, 247, 247, 247))),
                              focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromARGB(255, 247, 247, 247))),
                            )),
                      ],
                    ),
                  )),
            ),
            const SizedBox(height: 80),
            Material(
              elevation: 10,
              color: const Color.fromARGB(255, 247, 247, 247),
              child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
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
                              if (_formKey.currentState!.validate()) {
                                Get.toNamed('fields');
                              }
                            }
                          : null,
                      child: const Text("ADD A NEW SENSOR"))),
            )
          ],
        ));
  }
}
