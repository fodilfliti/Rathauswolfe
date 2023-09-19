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

var colorBgPrimary = HexColor('#17194F');
var colorBgSecondary = HexColor('#FFFFFF');

var colorPrimary = HexColor('#042835');
var colorSecondary = HexColor('#128C7E');
var colorGreyDarkPrimary = HexColor('#BABABA');
var colorDark = HexColor("#ADCCF0");
var colorBlue = HexColor('#1DA1F3');
var colorGrey = HexColor('#F5F5F5');
var colorGreyBg = HexColor('#E5E5E5'); //#
var colorGreyButton = Color.fromRGBO(116, 116, 166, 0.12); //#
var colorGrey300 = HexColor('#D0D5DD'); //#
var colorGrey500 = HexColor('#667085'); //#
var colorGrey600 = HexColor('#475467'); //#
var colorGrey700 = HexColor('#344054'); //#
var colorGrey900 = HexColor('#101828'); //#
var colorGrey999 = HexColor('#999999'); //#
var colorGreyDark = HexColor('#B6BDE8');
var colorDisableButton = HexColor('#BDD4EE'); //#7193BB
var colorDisableButtonDark = HexColor('#7193BB'); //#
var colorGreen = HexColor('#48BD69');
var colorGreenSuccsess = HexColor('#10B981');
var colorGreenTeal600 = HexColor('#00897B');
var colorGreenTealDark = HexColor('#066060');
var colorYellow = HexColor('#FFB822');
var colorOrange = HexColor('#EBB138');
var colorError = HexColor('#E24343');
var colorText = HexColor('#002330');
var colorBlack = HexColor('#002330');
var colorTextBgBlack = HexColor('#FFFFFF');
var colorTextDark = HexColor('#EAEAEA'); //
var colorBg = HexColor('#F3F3F3');
var colorBgInput = HexColor('#FFFFFF');
var colorWhite = HexColor('#FFFFFF');
var colorTextInput = HexColor('#6D6D6D');
var colorTextInputDark = HexColor('#B3CDEB');
var colorText2 = HexColor('#EAEAEA');
var colorBorder = HexColor("#575757");
var colorBorderDark = HexColor("#7CB8FF");
var colorButtonPrimaryBg = MaterialStateProperty.resolveWith<Color>((states) {
  return colorPrimary;
});
var colorButtonSecondryBg = MaterialStateProperty.resolveWith<Color>((states) {
  return colorBg;
});
var colorButtonGreenBg = MaterialStateProperty.resolveWith<Color>((states) {
  return colorSecondary;
});

Color getTextColor(Color backgroundColor) {
  // Calculate the luminance of the background color
  double luminance = backgroundColor.computeLuminance();

  // If the luminance is less than 0.5, use white text, otherwise use black text
  return luminance < 0.5 ? Colors.white : Colors.black;
}
