import 'package:flutter/material.dart';

import 'colors.dart';

class OnaranlarTextstyle {
  static TextStyle title(
      {Color color = onaranlarPrimary,
      double fontSize = 18,
      FontWeight fontWeight = FontWeight.w500}) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontStyle: FontStyle.normal,
      fontFamily: "Roboto",
    );
  }

  static TextStyle subTitle(
      {Color color = appDark,
      double fontSize = 16,
      FontWeight fontWeight = FontWeight.normal}) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontStyle: FontStyle.normal,
      fontFamily: "Roboto",
    );
  }

  static TextStyle button(
      {Color color = whiteColor,
      double fontSize = 18,
      FontWeight fontWeight = FontWeight.w500}) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontStyle: FontStyle.normal,
      fontFamily: "Roboto",
    );
  }

  static TextStyle body(
      {Color color = appDark,
      double fontSize = 14,
      FontWeight fontWeight = FontWeight.normal}) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontStyle: FontStyle.normal,
      fontFamily: "Roboto",
    );
  }

  static TextStyle caption(
      {Color color = appDark,
      double fontSize = 12,
      FontWeight fontWeight = FontWeight.normal}) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontStyle: FontStyle.normal,
      fontFamily: "Roboto",
    );
  }

  static TextStyle heading3(
      {Color color = appDark,
      double fontSize = 36,
      FontWeight fontWeight = FontWeight.normal}) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontStyle: FontStyle.normal,
      fontFamily: "Roboto",
    );
  }

  static TextStyle heading5(
      {Color color = whiteColor,
      double fontSize = 24,
      FontWeight fontWeight = FontWeight.w500}) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontStyle: FontStyle.normal,
      fontFamily: "Roboto",
    );
  }
}
