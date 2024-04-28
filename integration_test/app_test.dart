import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:lab_5/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group(
    'UI',
    () {
      const incorrectText = 'Incorrect';
      const correctText = 'Correct';
      testWidgets(
        'After tapping validate for valid password correct text appears',
        (widgetTester) async {
          app.main();
          await widgetTester.pumpAndSettle();
          await widgetTester.enterText(
              find.byType(TextField), 'Checkabc23{llllllll');
          await widgetTester.tap(find.byType(ElevatedButton));

          final textElement = find.text(correctText);
          expect(textElement.hasFound, true);
        },
      );
    },
  );
}
