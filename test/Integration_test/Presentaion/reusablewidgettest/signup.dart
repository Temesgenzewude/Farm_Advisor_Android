import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:agino_client/presentation/reusable_widgets/large_app_logo.dart';

void main() {
  testWidgets('LargeAppLogo should display correctly', (tester) async {
    // Build the widget
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: Center(
          child: LargeAppLogo(),
        ),
      ),
    ));

    // Check if the CircleAvatar with radius 100 is present
    expect(find.byType(CircleAvatar), findsNWidgets(3));
    expect(find.byType(CircleAvatar).first, findsOneWidget);

    // Check if the CircleAvatar with radius 50 is present
    expect(find.byType(CircleAvatar, skipOffstage: false).last, findsOneWidget);

    // Check if the positioned widget with width 10 and height 71 is present
    expect(find.byType(Positioned), findsOneWidget);
  });
}