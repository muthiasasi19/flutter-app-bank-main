import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
// ignore: unused_import
import 'package:form_example/main.dart';
import 'package:form_example/main.dart' as app;
// ignore: unused_import
import 'package:form_example/view_page.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Submit Data', () {
    testWidgets(
      'Verifikasi Inputan Data',
      (tester) async {
        app.main();
        await tester.pumpAndSettle();
        await Future.delayed(const Duration(seconds: 2));
        await tester.enterText(find.byType(TextField).at(0), 'Muthia');
        await Future.delayed(const Duration(seconds: 2));
        await tester.enterText(find.byType(TextField).at(1), '20220140167');
        await Future.delayed(const Duration(seconds: 2));
        await tester.enterText(find.byType(TextField).at(2), '19-03-2004');
        await Future.delayed(const Duration(seconds: 2));
        await tester.enterText(find.byType(TextField).at(3), 'Female');
        await Future.delayed(const Duration(seconds: 2));
        await tester.enterText(find.byType(TextField).at(4), '081234567890');
        await Future.delayed(const Duration(seconds: 2));
        await tester.enterText(find.byType(TextField).at(5), 'Sarjana');
        await Future.delayed(const Duration(seconds: 2));
        await tester.enterText(find.byType(TextField).at(6), 'MUSLIM');
        await Future.delayed(const Duration(seconds: 2));
        await tester.enterText(find.byType(TextField).at(7), 'Collage Student');
        await Future.delayed(const Duration(seconds: 2));
        await tester.enterText(find.byType(TextField).at(8), 'NTB');
        await Future.delayed(const Duration(seconds: 2));
        await tester.enterText(find.byType(TextField).at(9), 'whatever');
        await Future.delayed(const Duration(seconds: 2));
        await tester.tap(find.byType(ElevatedButton));
        await Future.delayed(const Duration(seconds: 2));
        await tester.pumpAndSettle();

        await Future.delayed(const Duration(seconds: 2));
        expect(find.byType(ViewPage), findsOneWidget);
      },
    );
  });
}
