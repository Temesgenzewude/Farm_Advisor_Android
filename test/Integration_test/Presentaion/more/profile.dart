import 'package:agino_client/presentation/more/profile.dart';
import 'package:agino_client/presentation/reusable_widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';


void main() {
  Widget makeTestableWidget({required Widget child}) {
    return MaterialApp(
      home: child,
    );
  }

  testWidgets('', (WidgetTester tester) async {
    await tester.pumpWidget(makeTestableWidget(child:Profile()));
    
     // Checks if closes button is correctly placed in appBar widget. 
     // Verify that the app bar title is "Profile"
    expect(find.text("Profile"), findsOneWidget);

    // Verify that the phone number text is "+ 123 456 789"
    expect(find.text("+ 123 456 789"), findsOneWidget);

    // Verify that the terms and conditions text is present
    expect(find.text("Terms and Conditons"), findsOneWidget);

    // Verify that the delete account text is present
    expect(find.text("Delete Account"), findsOneWidget);

    // Tap the delete account text
    await tester.tap(find.text("Delete Account"));
    await tester.pump();

    // Verify that the print statement in the onTap function is executed
    expect(find.text("clicked"), findsOneWidget);    
    
  });
}