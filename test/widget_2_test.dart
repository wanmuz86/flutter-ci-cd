import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';


void main() {
  testWidgets('MyButton triggers callback when tapped', (WidgetTester tester) async {
    var wasPressed = false;


    // Build the button widget
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: ElevatedButton(
            onPressed: () => wasPressed = true,
            child: Text('Press Me'),
          ),
        ),
      ),
    );


    // Simulate a tap on the button
    await tester.tap(find.byType(ElevatedButton));


    // Rebuild the widget
    await tester.pump();


    // Verify the callback was triggered
    expect(wasPressed, true);
  });
}
