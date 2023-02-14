import 'package:agino_client/presentation/dashboard/reset_gdd.dart';
import 'package:agino_client/presentation/reusable_widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:agino_client/presentation/reusable_widgets/dashboard_custome_appbar.dart';

void main() {
  Widget makeTestableWidget({required Widget child}) {
    return MaterialApp(
      home: child,
    );
  }

  testWidgets('', (WidgetTester tester) async {
    await tester.pumpWidget(makeTestableWidget(child:ResetGDD()));
// Verify that the AppBar is a DashBoardCustomAppBar
    expect(find.byType(DashBoardCustomAppBar), findsOneWidget);
    
    // Verify that the back arrow button is present
    expect(find.byIcon(Icons.arrow_back_ios), findsOneWidget);

    // Verify the text 'RESET GDD' is present
    expect(find.text('RESET GDD'), findsNWidgets(2));
    

    
    // Verify the text 'Reset from' is present
    expect(find.text('Reset from'), findsOneWidget);

    
    // Verify that the text '11 May 2022' is present
    expect(find.text('11 May 2022'), findsOneWidget);
    
    // Verify the text 'Previous reset days' is present
    expect(find.text('Previous reset days'), findsOneWidget);

  });
}