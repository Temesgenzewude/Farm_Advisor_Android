import 'package:agino_client/presentation/reusable_widgets/custome_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  testWidgets('Text widget displays text with specified font style', (WidgetTester tester) async {
    // Arrange
    final text = 'Hello, World!';
    final fontWeight = FontWeight.bold;
    final fontSize = 20.0;
    final color = Colors.red;

    // Act
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: TextWidget(
          text: text,
          fontWeight: fontWeight,
          fontSize: fontSize,
          color: color,
        ),
      ),
    ));

    // Assert
    final textWidget = find.byType(Text);
    expect(textWidget, findsOneWidget);
    final style = tester.widget<Text>(textWidget).style;
  });
}