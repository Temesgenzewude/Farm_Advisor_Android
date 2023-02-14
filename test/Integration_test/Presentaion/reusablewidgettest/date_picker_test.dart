import 'package:agino_client/presentation/reusable_widgets/date_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test/flutter_test.dart';
void main() {
  group('PickDate', () {
    testWidgets('displays the selected date after being selected', (tester) async {
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: PickDate(),
        ),
      ));

      // Tap the date picker button
      await tester.tap(find.byType(IconButton));
      await tester.pumpAndSettle();

      // Tap the "OK" button in the date picker dialog
      await tester.tap(find.text('OK'));
      await tester.pumpAndSettle();

      // Check that a snack bar displaying the selected date is shown
      expect(find.byType(SnackBar), findsOneWidget);
      expect(find.text('Selected: 19/1/2022'), findsOneWidget);
    });
  });
}