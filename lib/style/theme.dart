import 'package:flutter/material.dart';

import 'colors.dart';

final ThemeData appTheme = _buildAppTheme();

ThemeData _buildAppTheme() {
  final ColorScheme colorScheme = const ColorScheme.light()
      .copyWith(primary: primaryColor, secondary: primaryColor);
  final ThemeData base = ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      brightness: Brightness.light,
      accentColorBrightness: Brightness.light,
      colorScheme: colorScheme,
      primaryColor: primaryColor,
      buttonColor: primaryColor,
      indicatorColor: Colors.white,
      splashColor: Colors.white24,
      splashFactory: InkRipple.splashFactory,
      canvasColor: whiteColor,
      scaffoldBackgroundColor: whiteColor,
      backgroundColor: whiteColor,
      floatingActionButtonTheme:
          FloatingActionButtonThemeData(foregroundColor: whiteColor),
      buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.primary),
      tabBarTheme: TabBarTheme(
          unselectedLabelColor: unselectedColor,
          indicatorSize: TabBarIndicatorSize.label,
          labelColor: Colors.black,
          labelPadding: const EdgeInsets.only(left: 0),
          indicator: BoxDecoration(
              border:
                  Border(bottom: BorderSide(color: primaryColor, width: 2)))));
  return base.copyWith(
    textTheme: _buildTextTheme(base.textTheme),
    primaryTextTheme: _buildTextTheme(
      base.primaryTextTheme,
    ),
    accentTextTheme: _buildTextTheme(
      base.accentTextTheme,
    ),
  );
}

TextTheme _buildTextTheme(TextTheme base, {Color color}) {
  return base
      .copyWith(
        headline1:
            base.headline1.copyWith(fontSize: 40, fontWeight: FontWeight.w500),
        headline3: base.headline3
            .copyWith(fontWeight: FontWeight.bold, color: color, fontSize: 25),
        headline2:
            base.headline2.copyWith(fontSize: 27, fontWeight: FontWeight.w500),
        headline6: base.headline6.copyWith(
            fontSize: 18.0, color: color, fontWeight: FontWeight.bold),
        subtitle1: base.subtitle1.copyWith(
            fontSize: 16, fontWeight: FontWeight.w600, color: primaryColor),
        subtitle2: base.subtitle2.copyWith(
          fontSize: 14,
          fontWeight: FontWeight.normal,
        ),
        caption: base.caption.copyWith(
            fontWeight: FontWeight.normal, fontSize: 10.0, color: color),
        bodyText2: base.bodyText2.copyWith(fontSize: 14.0, color: color),
        bodyText1: base.bodyText1
            .copyWith(fontSize: 14.0, wordSpacing: 2, color: color),
        button: base.button.copyWith(
            fontWeight: FontWeight.bold, fontSize: 16.0, color: color),
      )
      // Helvetica is not free on google font site
      .apply(
        fontFamily: "Helvetica",
      );
}
