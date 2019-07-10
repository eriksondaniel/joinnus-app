import 'package:flutter/material.dart';
import 'package:joinnus/global.dart';

const jPrimaryColor = const Color(0xFF42a692);
const jPrimaryLight = const Color(0xFFffffff);
const jPrimaryDark = const Color(0xFF1a171b);
const kTextP = const Color(0xFF1a171b);

const lPrimaryColor = const Color(0xFFBF1F1F);
const lPrimaryDark = const Color(0xFF1a171b);
const lPrimaryLight = const Color(0xFFffffff);

ThemeData themeData() {
  switch (BRANDCODE) {
    case 'joinnus':
      return buildJoinnusTheme();
    case 'laplaza':
      return buildLaPlazaTheme();
      break;
    default:
  }
}

ThemeData buildJoinnusTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    accentColor: jPrimaryColor,
    primaryColorLight: jPrimaryColor,
    primaryColor: jPrimaryDark,
    primaryColorDark: jPrimaryDark,
    // Color Bar
    primaryColorBrightness: Brightness.dark,
    // scaffoldBackgroundColor: kPrimaryLight,
    // cardColor: kPrimaryLight,
    // textSelectionColor: kTextP,
    appBarTheme: AppBarTheme(
      // elevation: 0.5,
      color: jPrimaryDark,
      // iconTheme: IconThemeData(color: kTextP),
      // actionsIconTheme: IconThemeData(color: kTextP),
      textTheme: TextTheme(
        title: TextStyle(
          fontWeight: FontWeight.w300,
          fontSize: 30.0,
        ),
        subtitle: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.w900,
        ),
      ),
    ),
    textSelectionColor: jPrimaryColor,
    textTheme: TextTheme(
      title: TextStyle(fontWeight: FontWeight.w800, color: jPrimaryDark),
      subtitle: TextStyle(
          fontWeight: FontWeight.w800, fontSize: 20, color: jPrimaryDark),
      overline: TextStyle(color: jPrimaryDark),
      subhead: TextStyle(color: jPrimaryDark),
      body1: TextStyle(color: jPrimaryDark),
      body2: TextStyle(color: jPrimaryDark),
    ),
    //color FloatingActionButton
    floatingActionButtonTheme: base.floatingActionButtonTheme.copyWith(
      backgroundColor: jPrimaryColor,
    ),
    //color Button
    buttonTheme: base.buttonTheme.copyWith(
      buttonColor: jPrimaryColor,
      textTheme: ButtonTextTheme.primary,
    ),
    //color Icons
    primaryIconTheme: base.iconTheme.copyWith(color: jPrimaryLight),
  );
}

ThemeData buildLaPlazaTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    accentColor: lPrimaryColor,
    primaryColorLight: lPrimaryColor,
    //color Bar
    primaryColorBrightness: Brightness.light,
    appBarTheme: AppBarTheme(
      elevation: 0.5,
      color: lPrimaryColor,
      iconTheme: IconThemeData(color: kTextP),
      actionsIconTheme: IconThemeData(color: kTextP),
      textTheme: TextTheme(
        title: TextStyle(
          color: lPrimaryLight,
          fontWeight: FontWeight.w600,
          fontSize: 18,
        ),
        subtitle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w800,
        ),
      ),
    ),
    textTheme: TextTheme(
      title: TextStyle(fontWeight: FontWeight.w800, color: lPrimaryDark),
      subtitle: TextStyle(
          fontWeight: FontWeight.w800, fontSize: 16, color: lPrimaryDark),
      overline: TextStyle(color: lPrimaryDark),
      subhead: TextStyle(color: lPrimaryDark),
      body1: TextStyle(color: lPrimaryDark),
      body2: TextStyle(color: lPrimaryDark),
    ),
    //color FloatingActionButton
    floatingActionButtonTheme: base.floatingActionButtonTheme.copyWith(
      backgroundColor: lPrimaryColor,
    ),
    //color Button
    buttonTheme: base.buttonTheme.copyWith(
      buttonColor: lPrimaryColor,
      textTheme: ButtonTextTheme.primary,
    ),
    //color Icons
    primaryIconTheme: base.iconTheme.copyWith(color: kTextP),
  );
}
