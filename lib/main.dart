import 'package:agino_client/application/FieldController/field_controller.dart';
import 'package:agino_client/application/FramControllers/farm_controller.dart';
import 'package:agino_client/application/SensorController/sensor_controller.dart';
import 'package:agino_client/routes_helper/routes_helpers.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'firebase_options.dart';
import 'package:agino_client/application/helpers/dependencies.dart' as dep;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  dep.init();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<FarmController>().getFarms();
    Get.find<FieldController>().getFields();

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Agino Farm',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      // Getx routing
      initialRoute: RouteHelper.initial,

      getPages: RouteHelper.routes,
    );
  }
}
