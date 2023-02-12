import 'package:agino_client/presentation/dashboard/reset_sensors.dart';
import 'package:agino_client/presentation/dashboard/statistics_one_.dart';
import 'package:agino_client/presentation/reusable_widgets/draw_graph.dart';
import 'package:agino_client/presentation/sensors/add_sensor.dart';
import 'package:agino_client/presentation/sensors/fields.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Agino Farm',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      // Getx routing
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: (() => AddField())),
        GetPage(name: "/resetGDD", page: (() => ResetGDD())),
      ],
    );
  }
}
