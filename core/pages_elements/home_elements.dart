import 'package:afinz_banco_pj_flutter_desktop/app/features/home/presenter/home_page.dart';
import 'package:flutter_test/flutter_test.dart';

import '../elements/text_field_element.dart';
import '../finders.dart';
import '../elements/button.dart';

class HomeElements {

  CommonFinders commonFinders;
  late AfinzFindersTest afinzFindersTest;
  WidgetTester widgetTester;

  HomeElements({required this.commonFinders, required this.widgetTester}) {
    afinzFindersTest = AfinzFindersTest(find: this.commonFinders);
  }

  Future<ButtonElement> accountArea() async {
    final finder = await afinzFindersTest.byKey("#KEY-home-bt-iconbtn");
    return ButtonElement(widgetTester, finder);
  }

  Future<ButtonElement> dataAccount() async {
    final finder = await afinzFindersTest.byKey("data_account");
    return ButtonElement(widgetTester,finder);
  }

  Future<ButtonElement> btnMenuExtract() async {
    MenuPageState state2 = await widgetTester.state(find.byType(MenuPage));
    List<ButtonElement> listBtnMenu = [];
    state2.widget.controller.sideBar.forEach((element) async {
      if (element.name=="Extrato") {
        final finder = await afinzFindersTest.byKey(
            "#KEY-bt-menu-${element.name}");
        listBtnMenu.add(ButtonElement(widgetTester, finder));
      }
    });
    return listBtnMenu.first;
  }

  Future<ButtonElement> itemExtract() async {
    final finder = await afinzFindersTest.byKey("#KEY-bt-menu-Extrato");
    return ButtonElement(widgetTester,finder);
  }
  Future<ButtonElement> btPdfDownload() async {
    final finder = await afinzFindersTest.byKey("#KEY-bt-pdf-download");
    return ButtonElement(widgetTester,finder);
  }
}
