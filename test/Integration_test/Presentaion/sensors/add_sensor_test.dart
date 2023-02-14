import 'package:agino_client/presentation/sensors/add_sensor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:agino_client/presentation/reusable_widgets/dashboard_custome_appbar.dart';
import 'package:agino_client/presentation/reusable_widgets/large_app_logo.dart';
import 'package:get/get.dart';

void main() {
  testWidgets('SensorPage UI Test', (WidgetTester tester) async {
    // Build the SensorPage widget
    await tester.pumpWidget(MaterialApp(
      home: SensorPage(),
    ));

    // Verify that the custom app bar is present
    expect(find.byType(DashBoardCustomAppBar), findsOneWidget);

    // Verify that the LargeAppLogo is present
    expect(find.byType(LargeAppLogo), findsOneWidget);


  });
}