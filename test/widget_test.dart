// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:motion_toast/motion_toast.dart';

void main() {
  group('Success motion toast testing...', () {
    testWidgets(
      'Basic motion toast widget test',
      (tester) async {
        var basicMotionToastWidget = MotionToast.success(
          description: const Text(
            'Elegant notification description',
          ),
        );
        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: Center(
                child: basicMotionToastWidget,
              ),
            ),
          ),
        );
        expect(
          find.byType(Text),
          findsOneWidget,
        );
        expect(
          find.byType(Icon),
          findsOneWidget,
        );
      },
    );

    testWidgets(
      'Motion toast with title widget test',
      (tester) async {
        var basicMotionToastWidget = MotionToast.success(
          description: const Text(
            'Elegant notification description',
          ),
          title: const Text(
            'Elegant notification title',
          ),
        );
        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: Center(
                child: basicMotionToastWidget,
              ),
            ),
          ),
        );
        expect(
          find.byType(Text),
          findsAtLeast(2),
        );
        expect(
          find.byType(Icon),
          findsOneWidget,
        );
      },
    );

    testWidgets(
      'Motion toast with title and toast duration widget test',
      (tester) async {
        var basicMotionToastWidget = MotionToast.success(
          description: const Text(
            'Elegant notification description',
          ),
          title: const Text(
            'Elegant notification title',
          ),
          toastDuration: const Duration(seconds: 1),
        );
        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: Center(
                child: basicMotionToastWidget,
              ),
            ),
          ),
        );
        expect(
          find.byType(Text),
          findsAtLeast(2),
        );
        expect(
          find.byType(Icon),
          findsOneWidget,
        );
        expect(
          find.byType(MotionToast),
          findsOneWidget,
        );
      },
    );
  });
}
