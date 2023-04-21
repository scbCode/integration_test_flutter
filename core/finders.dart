
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class AfinzFindersTest {

  CommonFinders find;

  AfinzFindersTest({
    required this.find
  });

  Future<Finder> byKey(String key) async {
    return await find.byKey(Key(key)).first;
  }

  Finder byText(String text){
    return find.text(text);
  }
}