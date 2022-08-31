import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray51 = fromHex('#fafbfe');

  static Color gray400 = fromHex('#c0c3cb');

  static Color gray301 = fromHex('#e0e0e3');

  static Color black900B2 = fromHex('#b20e0f12');

  static Color indigoA201 = fromHex('#5d83f1');

  static Color indigoA200 = fromHex('#406dee');

  static Color gray300 = fromHex('#dcdde2');

  static Color gray50 = fromHex('#fafcff');

  static Color bluegray900 = fromHex('#262b35');

  static Color black900 = fromHex('#000000');

  static Color bluegray500 = fromHex('#73798c');

  static Color bluegray400 = fromHex('#888888');

  static Color whiteA700 = fromHex('#ffffff');

  static Color gray70011 = fromHex('#11555555');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
