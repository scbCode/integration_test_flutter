import 'package:flutter_test/flutter_test.dart';

class ButtonElement  {

  WidgetTester _widgetTester;
  Finder _finder;

  ButtonElement( this._widgetTester, this._finder );

  click() async {
   await _widgetTester.tap( _finder );
   await _widgetTester.pumpAndSettle();
  }

}