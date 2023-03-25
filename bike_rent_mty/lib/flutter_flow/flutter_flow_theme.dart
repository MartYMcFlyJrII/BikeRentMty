// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class FlutterFlowTheme {
  static FlutterFlowTheme of(BuildContext context) {
    return LightModeTheme();
  }

  late Color primaryColor;
  late Color secondaryColor;
  late Color tertiaryColor;
  late Color alternate;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color primaryText;
  late Color secondaryText;

  late Color white;
  late Color iconGray;
  late Color grayDark;
  late Color darkBG;
  late Color background;
  late Color grayLines;

  String get title1Family => typography.title1Family;
  TextStyle get title1 => typography.title1;
  String get title2Family => typography.title2Family;
  TextStyle get title2 => typography.title2;
  String get title3Family => typography.title3Family;
  TextStyle get title3 => typography.title3;
  String get subtitle1Family => typography.subtitle1Family;
  TextStyle get subtitle1 => typography.subtitle1;
  String get subtitle2Family => typography.subtitle2Family;
  TextStyle get subtitle2 => typography.subtitle2;
  String get bodyText1Family => typography.bodyText1Family;
  TextStyle get bodyText1 => typography.bodyText1;
  String get bodyText2Family => typography.bodyText2Family;
  TextStyle get bodyText2 => typography.bodyText2;

  Typography get typography => ThemeTypography(this);
}

class LightModeTheme extends FlutterFlowTheme {
  late Color primaryColor = const Color(0xFFEE8B60);
  late Color secondaryColor = const Color(0xFF262D34);
  late Color tertiaryColor = const Color(0xFF39D2C0);
  late Color alternate = const Color(0x00000000);
  late Color primaryBackground = const Color(0x00000000);
  late Color secondaryBackground = const Color(0x00000000);
  late Color primaryText = const Color(0x00000000);
  late Color secondaryText = const Color(0x00000000);

  late Color white = Color(0xFFFFFFFF);
  late Color iconGray = Color(0xFF8B97A2);
  late Color grayDark = Color(0xFF57636C);
  late Color darkBG = Color(0xFF111417);
  late Color background = Color(0xFFF1F4F8);
  late Color grayLines = Color(0xFFDBE2E7);
}

abstract class Typography {
  String get title1Family;
  TextStyle get title1;
  String get title2Family;
  TextStyle get title2;
  String get title3Family;
  TextStyle get title3;
  String get subtitle1Family;
  TextStyle get subtitle1;
  String get subtitle2Family;
  TextStyle get subtitle2;
  String get bodyText1Family;
  TextStyle get bodyText1;
  String get bodyText2Family;
  TextStyle get bodyText2;
}

class ThemeTypography extends Typography {
  ThemeTypography(this.theme);

  final FlutterFlowTheme theme;

  String get title1Family => 'Overpass';
  TextStyle get title1 => GoogleFonts.getFont(
        'Overpass',
        color: theme.darkBG,
        fontWeight: FontWeight.bold,
        fontSize: 30.0,
      );
  String get title2Family => 'Overpass';
  TextStyle get title2 => GoogleFonts.getFont(
        'Overpass',
        color: theme.darkBG,
        fontWeight: FontWeight.bold,
        fontSize: 24.0,
      );
  String get title3Family => 'Overpass';
  TextStyle get title3 => GoogleFonts.getFont(
        'Overpass',
        color: theme.darkBG,
        fontWeight: FontWeight.w600,
        fontSize: 20.0,
      );
  String get subtitle1Family => 'Overpass';
  TextStyle get subtitle1 => GoogleFonts.getFont(
        'Overpass',
        color: theme.primaryColor,
        fontWeight: FontWeight.w500,
        fontSize: 18.0,
      );
  String get subtitle2Family => 'Overpass';
  TextStyle get subtitle2 => GoogleFonts.getFont(
        'Overpass',
        color: theme.darkBG,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  String get bodyText1Family => 'Overpass';
  TextStyle get bodyText1 => GoogleFonts.getFont(
        'Overpass',
        color: theme.grayDark,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
      );
  String get bodyText2Family => 'Overpass';
  TextStyle get bodyText2 => GoogleFonts.getFont(
        'Overpass',
        color: theme.darkBG,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
      );
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    FontStyle? fontStyle,
    bool useGoogleFonts = true,
    TextDecoration? decoration,
    double? lineHeight,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily!,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              letterSpacing: letterSpacing ?? this.letterSpacing,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              decoration: decoration,
              height: lineHeight,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              letterSpacing: letterSpacing,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              decoration: decoration,
              height: lineHeight,
            );
}
