import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MyGoogleMap extends StatefulWidget {
  @override
  _MyGoogleMapState createState() => _MyGoogleMapState();
}

class _MyGoogleMapState extends State<MyGoogleMap> {
  String googleApikey = "GOOGLE_MAP_API_KEY";
  GoogleMapController? mapController; //contrller for Google map
  CameraPosition? cameraPosition;
  LatLng startLocation = LatLng(27.6602292, 85.308027);
  String location = "Location Name:";
  String lat = "8.990152";
  String long = "38.98368";

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      GoogleMap(
        //Map widget from google_maps_flutter package
        zoomGesturesEnabled: true, //enable Zoom in, out on map
        initialCameraPosition: CameraPosition(
          //innital position in map
          target: startLocation, //initial position
          zoom: 14.0, //initial zoom level
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
          // List<Placemark> placemarks = await placemarkFromCoordinates(
          //     cameraPosition!.target.latitude,
          //     cameraPosition!.target.longitude);
          setState(() {
            //get place name from lat and lang
            lat = cameraPosition!.target.latitude.toStringAsPrecision(7);
            long = cameraPosition!.target.longitude.toStringAsPrecision(7);
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
      Positioned(
          //widget to display location name
          bottom: 100,
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Card(
              child: Container(
                  padding: EdgeInsets.all(0),
                  width: MediaQuery.of(context).size.width - 40,
                  child: ListTile(
                    leading: Image.asset(
                      "assets/images/picker.png",
                      width: 25,
                    ),
                    title: Text(
                      "${lat},${long}",
                      style: TextStyle(fontSize: 18),
                    ),
                    dense: true,
                  )),
            ),
          ))
    ]);
  }
}
