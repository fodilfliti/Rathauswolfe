import 'package:flutter/material.dart';

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

var colorBlackText = HexColor("#16194F");
var colorBgPrimary = HexColor('#17194F');
var colorBgSecondary = HexColor('#FFFFFF');
var colorWhite = HexColor('#FFFFFF');

var colorError = HexColor('#E24343');
var colorText = HexColor('#002330');

Color getTextColor(Color backgroundColor) {
  // Calculate the luminance of the background color
  double luminance = backgroundColor.computeLuminance();

  // If the luminance is less than 0.5, use white text, otherwise use black text
  return luminance < 0.5 ? Colors.white : Colors.black;
}
