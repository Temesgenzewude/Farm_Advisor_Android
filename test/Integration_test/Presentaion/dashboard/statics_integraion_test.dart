import 'package:agino_client/presentation/dashboard/statistics_one_.dart';
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
    await tester.pumpWidget(makeTestableWidget(child:StatisticsOne()));
    expect(find.byType(Scaffold), findsOneWidget);
    expect(find.byType(DashBoardCustomAppBar), findsOneWidget);
    expect(find.byType(Container), findsNWidgets(106));
    expect(find.byType(SingleChildScrollView), findsNWidgets(5));
    expect(find.byType(Column), findsNWidgets(24));
    expect(find.text("FIELD NAME TWO"), findsOneWidget);
    expect(find.byType(SizedBox), findsNWidgets(46));
    expect(find.byType(Icon), findsNWidgets(11));
    expect(find.text("127m above sea level"), findsOneWidget);
  });
}