import 'package:afinz_banco_pj_flutter_desktop/app/features/home/presenter/home_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:afinz_banco_pj_flutter_desktop/main.dart' as app;
import 'package:integration_test/integration_test.dart';

import 'core/elements/button.dart';
import 'core/elements/text_field_element.dart';
import 'core/pages_elements/login_elements.dart';

void main() {

  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Group tests ', () {

    testWidgets('desktop-pj-flow-test', (widget) async {
      await widget.runAsync(() async {

        ///initi app
        await widget.pumpApp();

        await widget.pumpAndSettle();

        ///ELEMENTOS DA PAGINA LOGIN
        LoginElements elementsLogin = LoginElements(widgetTester: widget, commonFinders: find);

        TextFieldElement textFieldElementDoc =
            await elementsLogin.textFieldDocLogin();
        /// CLICK TEXTFIELD
        await textFieldElementDoc.click();
        /// SET TEXT TEXTFIELD
        await textFieldElementDoc.setText("88551630865");

        /// TEXTFIELD PWD - LOGIN
        TextFieldElement textFieldElementPwd =
            await elementsLogin.textFieldLoginPwd();
        /// CLICK TEXTFIELD
        await textFieldElementPwd.click();
        /// SET TEXT TEXTFIELD
        await textFieldElementPwd.setText("747292");

        /// BT CONTINUAR
        final btnContinuar = await elementsLogin.btnNext();
        /// CLICK BT
        await btnContinuar.click();

        await widget.pumpAndSettle();

        /// É esperado a tela MenuPage
        expect(find.byType(MenuPage), findsOneWidget);

        toFinish();

      });
    });
  });
}

extension on WidgetTester {
  Future<void> pumpApp() async {
    app.main();
    await pump();
  }
}

void toFinish(){
  debugDefaultTargetPlatformOverride = null;
}

