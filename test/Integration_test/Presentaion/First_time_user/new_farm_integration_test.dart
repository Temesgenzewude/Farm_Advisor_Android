import 'package:agino_client/presentation/firstTimeUser/newFarm.dart';
import 'package:agino_client/presentation/firstTimeUser/newFarm.dart';
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
    await tester.pumpWidget(makeTestableWidget(child:NewFarm()));
    
    // Verify that the 'NewFarm' text is displayed in the app bar
    expect(find.text('NEWFARM'), findsOneWidget);
    
    // Verify that the 'Farm name' text is displayed
    expect(find.text('Farm name'), findsOneWidget);
    
    // Verify that the 'Location' text is displayed
    expect(find.text('Location'), findsOneWidget);
    
    // Verify that the text form field for 'Farm name' is displayed
    expect(find.byType(TextFormField), findsNWidgets(2));
    
    // Verify that the 'Create new farm' button is displayed
    expect(find.byType(CustomButton), findsOneWidget);
    
    // Verify that the 'Create new farm' button is not null
    CustomButton createNewFarmButton = tester.widget(find.byType(CustomButton));
    expect(createNewFarmButton  , isNotNull);
    
    // Verify that the text in the 'Create new farm' button is 'Create new farm'
    expect(createNewFarmButton.text, 'Create new farm');

  });
}
