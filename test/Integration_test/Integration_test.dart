import 'package:agino_client/presentation/firstTimeUser/welcome.dart';
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
    await tester.pumpWidget(makeTestableWidget(child:Welcome()));
    expect(find.byType(CustomButton), findsAtLeastNWidgets(1));
    expect(find.text("Create NewFarm"), findsOneWidget);
    expect(find.byType(Padding), findsNWidgets(5));
    expect(find.byType(Text), findsWidgets);
    expect(find.byType(DashBoardCustomAppBar), findsOneWidget);
    expect(find.byType(Image), findsOneWidget);


  });
}
