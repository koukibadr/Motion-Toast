import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:example/main.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Only toast pops: 1', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    // Tap the button with the text 'Custom Motion Toast'
    await tester.tap(find.text('Custom Motion Toast'));
    tester.pump(const Duration(seconds: 2));

    // Tap on the screen to dismiss the toast
    await Future.delayed(const Duration(seconds: 2, milliseconds: 500));
    await tester.tapAt(const Offset(10, 10));
    await tester.pumpAndSettle();

    // Verify that only the toast is gone
    await Future.delayed(const Duration(seconds: 2));
    expect(find.text('Custom Motion Toast'), findsOneWidget);
  });

  testWidgets('Only toast pops: 2', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    // Tap the button with the text 'Custom Motion Toast'
    await tester.tap(find.text('Custom Motion Toast'));
    tester.pump(const Duration(seconds: 2));

    // Tap on the screen to dismiss the toast
    await Future.delayed(const Duration(seconds: 3));
    await tester.tapAt(const Offset(10, 10));
    await tester.pumpAndSettle();

    // Verify that only the toast is gone
    await Future.delayed(const Duration(seconds: 2));
    expect(find.text('Custom Motion Toast'), findsOneWidget);
  });
}
