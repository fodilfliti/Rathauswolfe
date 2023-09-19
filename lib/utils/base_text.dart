import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

enum CusTextStyleType {
  s20w700,
  s20w600,
  s20w500,
  s18w700,
  s18w600,
  s18w500,
  s16w700,
  s16w600,
  s16w500,
  s14w700,
  s14w600,
  s14w500,
  s12w700,
  s12w600,
  s12w500,
  custom
}

final TextTheme base = ThemeData.light().textTheme.copyWith(
      displayLarge: GoogleFonts.abel(
        color: colorText,
        fontSize: 20,
        fontWeight: FontWeight.w700,
      ),
      displayMedium: GoogleFonts.abel(
        color: colorText,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
      displaySmall: GoogleFonts.abel(
        color: colorText,
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
      labelLarge: GoogleFonts.abel(
        color: colorText,
        fontSize: 18,
        fontWeight: FontWeight.w700,
      ),
      labelMedium: GoogleFonts.abel(
        color: colorText,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
      labelSmall: GoogleFonts.abel(
        color: colorText,
        fontSize: 18,
        fontWeight: FontWeight.w400,
      ),
      bodyLarge: GoogleFonts.abel(
        color: colorText,
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ),
      bodyMedium: GoogleFonts.abel(
        color: colorText,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
      bodySmall: GoogleFonts.abel(
        color: colorText,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      headlineLarge: GoogleFonts.abel(
        color: colorText,
        fontSize: 14,
        fontWeight: FontWeight.w700,
      ),
      headlineMedium: GoogleFonts.abel(
        color: colorText,
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
      headlineSmall: GoogleFonts.abel(
        color: colorText,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      titleLarge: GoogleFonts.abel(
        color: colorText,
        fontSize: 12,
        fontWeight: FontWeight.w700,
      ),
      titleMedium: GoogleFonts.abel(
        color: colorText,
        fontSize: 12,
        fontWeight: FontWeight.w600,
      ),
      titleSmall: GoogleFonts.abel(
        color: colorText,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
    );

TextStyle cusTextStyle(
    {CusTextStyleType? textStyle,
    double? fontSize,
    FontWeight? fontWeight,
    Color? color,
    String? fontFamily,
    double? letterSpacing,
    double? height,
    double? wordSpacing,
    TextDecoration? decoration}) {
  TextStyle? baseTextStyle;
  switch (textStyle) {
    case CusTextStyleType.s20w700:
      baseTextStyle = base.displayLarge;
      break;
    case CusTextStyleType.s20w600:
      baseTextStyle = base.displayMedium;
      break;
    case CusTextStyleType.s20w500:
      baseTextStyle = base.displaySmall;
      break;
    case CusTextStyleType.s18w700:
      baseTextStyle = base.labelLarge;
      break;
    case CusTextStyleType.s18w600:
      baseTextStyle = base.labelMedium;
      break;
    case CusTextStyleType.s18w500:
      baseTextStyle = base.labelSmall;
      break;
    case CusTextStyleType.s16w700:
      baseTextStyle = base.bodyLarge;
      break;
    case CusTextStyleType.s16w600:
      baseTextStyle = base.bodyMedium;
      break;
    case CusTextStyleType.s16w500:
      baseTextStyle = base.bodySmall;
      break;
    case CusTextStyleType.s14w700:
      baseTextStyle = base.headlineLarge;
      break;
    case CusTextStyleType.s14w600:
      baseTextStyle = base.headlineMedium;
      break;
    case CusTextStyleType.s14w500:
      baseTextStyle = base.headlineSmall;
      break;
    case CusTextStyleType.s12w700:
      baseTextStyle = base.titleLarge;
      break;
    case CusTextStyleType.s12w600:
      baseTextStyle = base.titleMedium;
      break;
    case CusTextStyleType.s12w500:
      baseTextStyle = base.titleSmall;
      break;
    default:
      baseTextStyle = base.bodySmall;
  }
  return baseTextStyle!.merge(GoogleFonts.abel(
      color: color ?? baseTextStyle.color ?? colorText,
      fontSize: fontSize ?? baseTextStyle.fontSize,
      fontWeight: fontWeight ?? baseTextStyle.fontWeight ?? FontWeight.normal,
      letterSpacing: letterSpacing ?? baseTextStyle.letterSpacing,
      wordSpacing: wordSpacing ?? baseTextStyle.wordSpacing,
      decoration: decoration ?? baseTextStyle.decoration,
      height: height));
}
