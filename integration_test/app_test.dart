import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:testingexample1/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Login Test', () {
    testWidgets("Full app test", (tester) async {
      app.main();
      await tester.pumpAndSettle();

      final emailTextFeild = find.byKey(Key('email'));
      final passwordTextFeild = find.byKey(Key('password'));
      final loginButton = find.byKey(Key('login_button'));
      final firstcheckbox = find.byKey(Key('checkboxlisttile')).at(0);

      await tester.enterText(emailTextFeild, "test@gmail.com");
      await tester.pumpAndSettle();
      await tester.enterText(passwordTextFeild, "123456789");
      await tester.pumpAndSettle();

      await tester.tap(loginButton);
      await tester.pumpAndSettle();

      expect(
          tester.getSemantics(firstcheckbox),
          matchesSemantics(
            hasTapAction: true,
            hasCheckedState: true,
            isChecked: false,
            hasEnabledState: true,
            isEnabled: true,
            isFocusable: true,
          ));
      await tester.tap(firstcheckbox);
      await tester.pumpAndSettle();
      expect(
          tester.getSemantics(firstcheckbox),
          matchesSemantics(
            hasTapAction: true,
            hasCheckedState: true,
            isChecked: true,
            hasEnabledState: true,
            isEnabled: true,
            isFocusable: true,
          ));
    });
  });
}
