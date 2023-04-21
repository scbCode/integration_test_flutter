import 'package:flutter_test/flutter_test.dart';

import '../elements/text_field_element.dart';
import '../finders.dart';
import '../elements/button.dart';

class LoginElements {

  CommonFinders commonFinders;
  late AfinzFindersTest afinzFindersTest;
  WidgetTester widgetTester;

  LoginElements({required this.commonFinders, required this.widgetTester}) {
    afinzFindersTest = AfinzFindersTest(find: this.commonFinders);
  }

  Future<TextFieldElement> textFieldDocLogin() async {
    final finder = await afinzFindersTest.byKey("#KEY-login_page-text_field-doc");
    return TextFieldElement(widgetTester, finder);
  }

  Future<TextFieldElement> textFieldLoginPwd() async {
    final finder = await afinzFindersTest.byKey("#KEY-login_page-text_field-pwd");
    return TextFieldElement(widgetTester, finder);
  }

  Future<ButtonElement> btnNext() async {
    final finder = await afinzFindersTest.byKey("#KEY-login_page-bt-enter");
    return ButtonElement(widgetTester, finder);
  }

  Future<ButtonElement> recSenha() async {
    final finder = await afinzFindersTest.byKey("#KEY-login_page-bt-rec_senha");
    return ButtonElement(widgetTester, finder);
  }

}
