import 'package:flutter_test/flutter_test.dart';

class TextFieldElement {

  WidgetTester widgetTester;
  Finder finder;

  TextFieldElement( this.widgetTester, this.finder );

  click() async {
   await widgetTester.tap( finder );
   await widgetTester.pumpAndSettle();
  }

  setText( String text) async {
    await widgetTester.enterText( finder, text );
    await widgetTester.pumpAndSettle();
  }

}