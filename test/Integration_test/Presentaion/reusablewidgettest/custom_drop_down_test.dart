import 'package:agino_client/presentation/reusable_widgets/custom_drop_down.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DropDownButton', () {
    testWidgets('Should display the dropdown button and menu items',
        (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: DropDownButton(
            dropDownValue: '',
            items: [],
          ),
        ),
      ));

      expect(find.text('Farm1 name'), findsOneWidget);
      expect(find.text('Farm2 name'), findsOneWidget);
      expect(find.text('Farm3 name'), findsOneWidget);
      expect(find.text('Farm4 name'), findsOneWidget);
    });
  });
}
