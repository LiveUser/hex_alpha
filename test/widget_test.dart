import 'package:flutter_test/flutter_test.dart';
import 'package:hex_alpha/hex_alpha.dart';
import 'package:flutter/material.dart';

void main() {
  test("Hex color conversion test", (){
    const String hexColor = "#64473A";
    Color converted = hexAlpha(hexColor);
    print("Result rgba: (${converted.red}, ${converted.green}, ${converted.blue}, ${converted.alpha})");
  });
}