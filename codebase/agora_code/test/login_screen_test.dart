import 'package:agora/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('LoginScreen UI Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      const MaterialApp(
        home: LoginScreen(),
      ),
    );

    // Verify if the widgets are present on the screen.
    expect(find.byType(Image), findsOneWidget);
    expect(find.byType(TextFormField), findsNWidgets(2));
    expect(find.byType(SizedBox), findsNWidgets(3));
    expect(find.byType(MaterialButton), findsOneWidget);
  });

  testWidgets('LoginScreen Button Tap Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      const MaterialApp(
        home: LoginScreen(),
      ),
    );

    // Tap the login button and trigger a frame.
    await tester.tap(find.byType(MaterialButton));
    await tester.pump();

    // Verify if the HomeScreen is pushed.
   // expect(find.byType(HomeScreen), findsOneWidget);
  });

  // Add more tests as needed for specific functionalities, validations, etc.
}
