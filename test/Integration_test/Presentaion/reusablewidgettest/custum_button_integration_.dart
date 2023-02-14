import 'package:agino_client/presentation/reusable_widgets/custom_button.dart';
import 'package:agino_client/presentation/reusable_widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('CustomButton displays text and triggers callback on tap', (WidgetTester tester) async {
    // Define the variables for the test
    String buttonText = 'Test Button';
    Color buttonColor = Colors.red;
    bool tapTriggered = false;

    // Create the widget and provide the necessary variables and callbacks
    await tester.pumpWidget(MaterialApp(
      home: CustomButton(
        text: buttonText,
        onTap: () {
          tapTriggered = true;
        },
        color: buttonColor,
      ),
    ));

    // Verify that the text is displayed correctly
    expect(find.text(buttonText), findsOneWidget);

    // Tap the button
    await tester.tap(find.byType(ElevatedButton));
    await tester.pump();

    // Verify that the tap callback was triggered
    expect(tapTriggered, true);
  });
}