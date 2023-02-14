import 'package:agino_client/presentation/reusable_widgets/dashboard_custome_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test/flutter_test.dart';
void main() {
  testWidgets('DashBoardCustomAppBar Test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          appBar: DashBoardCustomAppBar(),
        ),
      ),
    );

    expect(find.byType(AppBar), findsOneWidget);
    expect(find.byType(Row), findsNWidgets(3));
    expect(find.byType(IconButton), findsNWidgets(2));

    // Test add button press
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Test person button press
    await tester.tap(find.byIcon(Icons.person));
    await tester.pump();

  });
}