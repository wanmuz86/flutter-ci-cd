import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:testing_lab/main.dart' as app;

import 'package:flutter/material.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();


  testWidgets('User can log in and access home screen', (WidgetTester tester) async {
    app.main();
    await tester.pumpAndSettle();


    // Simulate user input
    await tester.enterText(find.byKey(Key('username')), 'testuser');
    await tester.enterText(find.byKey(Key('password')), 'password123');

    // Tap login button
    await tester.tap(find.byType(ElevatedButton));
    await tester.pumpAndSettle();


    // Verify home screen is displayed
    expect(find.text('Home Screen'), findsOneWidget);
  });
}
