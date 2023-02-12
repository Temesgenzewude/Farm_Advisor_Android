import 'package:agino_client/routes_helper/routes_helpers.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();

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
