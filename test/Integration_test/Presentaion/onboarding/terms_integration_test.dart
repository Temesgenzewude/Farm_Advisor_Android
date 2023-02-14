import 'package:agino_client/presentation/onboarding/termsandconditions.dart';
import 'package:agino_client/presentation/reusable_widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:agino_client/presentation/onboarding/pageview/page1.dart';
import 'package:agino_client/presentation/onboarding/pageview/page2.dart';
import 'package:agino_client/presentation/onboarding/pageview/page3.dart';
import 'package:agino_client/presentation/reusable_widgets/large_app_logo.dart';
import 'package:agino_client/presentation/onboarding/signup.dart';
void main() {
  testWidgets('Terms widget test', (WidgetTester tester) async {
    // Build the widget
    await tester.pumpWidget(MaterialApp(
      home: Terms(),
    ));

    // Verify that the AppBar title is correct
    expect(find.text("TERMS & CONDITONS"), findsOneWidget);

    // Verify that the text in the body of the widget is correct
    expect(
        find.byType(SingleChildScrollView),
        findsOneWidget,
    );

    // Verify that the checkbox is present and its value is false
    expect(
      find.byType(Checkbox),
      findsOneWidget,
    );
  });
}
