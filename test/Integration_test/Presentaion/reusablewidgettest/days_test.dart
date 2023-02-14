import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:agino_client/presentation/reusable_widgets/days.dart';

void main() {
  testWidgets('Days widget test', (WidgetTester tester) async {
    // Build the widget
    await tester.pumpWidget(
      MaterialApp(
        home: Days(),
      ),
    );

    // Find the `Row` widget
    final row = find.byType(Row);
    expect(row, findsOneWidget);

    // Find all the `TextWidget` widgets
    final textWidgets = find.byType(Text);
    expect(textWidgets, findsNWidgets(8));
  });
}