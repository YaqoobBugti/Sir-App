import 'package:ebigwin/helpers/colors.dart';
import 'package:flutter/material.dart';

class Constants {
  static String appName = "EbigWin";

  static const lightPrimary = '#303346';
  //Colors for theme
  // static Color lightPrimary = HexColor('#303346');
  static Color darkPrimary = Colors.black;
  static Color lightAccent = HexColor('#D14937');

  static Color darkAccent = HexColor('#303346');
  static Color lightBG = Color(0xfffcfcff);
  static const darkBG = '#FFFFFF';
  // static Color light = HexColor('#FBD96D');

  static TextStyle headline1 = TextStyle(
    fontSize: 22.0,
    fontWeight: FontWeight.bold,
    color: HexColor('#FFFFFF'),
  );

  static TextStyle bodyText1 = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w300,
    color: HexColor('#B7C3CE'),
  );
  static TextStyle bodyText2 = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w300,
    color: HexColor('#FFFFFF'),
  );

  static ThemeData lightTheme = ThemeData(
    fontFamily: 'Poppins',
    backgroundColor: lightBG,
    primaryColor: HexColor(lightPrimary),
    accentColor: lightAccent,
    cursorColor: lightAccent,
    scaffoldBackgroundColor: lightBG,
    appBarTheme: AppBarTheme(
      textTheme: TextTheme(
        headline1: headline1,
        bodyText1: bodyText1,
        bodyText2:bodyText2,
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    backgroundColor: HexColor(darkBG),
    primaryColor: darkPrimary,
    accentColor: darkAccent,
    scaffoldBackgroundColor: HexColor(darkBG),
    cursorColor: darkAccent,
    appBarTheme: AppBarTheme(
      textTheme: TextTheme(
        headline6: TextStyle(
          color: lightBG,
          fontSize: 18.0,
          fontWeight: FontWeight.w800,
        ),
      ),
    ),
  );
}
