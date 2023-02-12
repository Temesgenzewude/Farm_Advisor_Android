import 'package:agino_client/presentation/dashboard/reset_gdd.dart';
import 'package:agino_client/presentation/dashboard/statistics_one_.dart';
import 'package:agino_client/presentation/reusable_widgets/draw_graph.dart';
import 'package:agino_client/routes_helper/routes_helpers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
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

      initialRoute: RouteHelper.initial,
      getPages: RouteHelper.routes,
    );
  }
}
