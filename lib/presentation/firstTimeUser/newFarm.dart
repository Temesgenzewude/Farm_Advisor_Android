import 'package:agino_client/application/FramControllers/farm_controller.dart';
import 'package:agino_client/domain/FarmModels/farm.dart';
import 'package:agino_client/presentation/reusable_widgets/custom_button.dart';
import 'package:agino_client/utils/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NewFarm extends StatefulWidget {
  const NewFarm({super.key});

  @override
  State<NewFarm> createState() => _NewFarmState();
}

class _NewFarmState extends State<NewFarm> {
  GoogleMapController? mapController; //contrller for Google map
  CameraPosition? cameraPosition;
  LatLng startLocation = LatLng(8.990152, 38.98368);
  String location = "Location Name:";
  String lat = "8.990152";
  String long = "38.98368";
  ScrollPhysics? _physics = null;
  TextEditingController farmController = TextEditingController();

  TextEditingController locationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    void postFarmData() {
      String name = farmController.text.trim();
      String location = locationController.text.trim();

      if (name.isNotEmpty && location.isNotEmpty) {
        var farmController = Get.find<FarmController>();
        var sharedPreferences = Get.find<SharedPreferences>();

        Farm farm = Farm(
            name: name,
            latitude: lat,
            longitude: long,
            userId: "0dc68a1a-8d1b-4760-8004-08db0dff878d");
        farmController.postFarm(farm).then((response) {
          if (response.isSuccess) {
            print("Successfully created farm");
            Get.toNamed("new-field");
          } else {
            print(response.message);
          }
        }).catchError((error) {
          print(error + "While creating farm");
        });
      }
    }

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'NEWFARM',
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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                const Text(
                  "Farm name",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: farmController,
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
                    hintText: 'create new farm',
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text("Location"),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  readOnly: true,
                  controller: locationController,
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    suffixIcon: InkWell(
                      onTap: () {},
                      child: const Padding(
                        padding: EdgeInsets.only(left: 6),
                        child: Icon(
                          Icons.search,
                          color: Colors.black,
                          size: 23,
                        ),
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.only(top: 10),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(7),
                      ),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'search location',
                    hintStyle: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                    ),
                  ),
                ),
              ]),
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
                      zoomGesturesEnabled: true, //enable Zoom in, out on map
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
                        cameraPosition = cameraPositiona; //when map is dragging
                      },
                      onCameraIdle: () async {
                        //when map drag stops
                        List<Placemark> placemarks =
                            await placemarkFromCoordinates(
                                cameraPosition!.target.latitude,
                                cameraPosition!.target.longitude);
                        setState(() {
                          //get place name from lat and lang
                          lat = cameraPosition!.target.latitude
                              .toStringAsPrecision(7);
                          long = cameraPosition!.target.longitude
                              .toStringAsPrecision(7);
                          locationController.text = '${lat},${long}';
                          // placemarks.first.administrativeArea.toString() +
                          //     ", " +
                          //     placemarks.first.street.toString();
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
                  // child: GoogleMap(
                  //   onTap: (LatLng coordinate) {
                  //     mapController.animateCamera(
                  //         CameraUpdate.newLatLng(coordinate));

                  //     setState(() {
                  //       _locationController.text =
                  //           "${coordinate.latitude.toStringAsPrecision(7)} ${coordinate.longitude.toStringAsPrecision(7)}";
                  //     });
                  //   },
                  //   onMapCreated: _onMapCreated,
                  //   initialCameraPosition: CameraPosition(
                  //     target: _center,
                  //     zoom: 11.0,
                  //   ),
                  // ),
                ),
              ),
              SizedBox(
                height: 90,
              ),
              CustomButton(
                  color: const Color.fromARGB(255, 4, 90, 57),
                  text: "Create new farm",
                  onTap: () {
                    postFarmData();
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
