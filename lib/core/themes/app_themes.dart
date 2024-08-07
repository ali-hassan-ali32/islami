import 'package:flutter/material.dart';

class AppTheme {
  static Color lightPrimaly = Color(0xffB7935F);
  static Color lightSecondary = Colors.white;

  static Color darkPrimaly = Color(0xff141A2E);
  static Color darkSecondary = Color(0xffFACC1D);
  static const bool isDark = false;

  static ThemeData light = ThemeData(
      textTheme: TextTheme(
        titleSmall: TextStyle(
            color: Color(0xff242424),
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: 'elMessiri'),
        titleMedium: TextStyle(
            color: Color(0xff242424),
            fontSize: 25,
            fontWeight: FontWeight.w600,
            fontFamily: 'Messiri'),
        titleLarge: TextStyle(
            color: Color(0xff242424),
            fontSize: 30,
            fontWeight: FontWeight.w600,
            fontFamily: 'Messiri'),
        bodySmall: TextStyle(
            color: Color(0xff242424),
            fontSize: 20,
            fontWeight: FontWeight.w400,
            fontFamily: 'inter'),
        bodyMedium: TextStyle(
            color: Color(0xff242424),
            fontWeight: FontWeight.w600,
            fontSize: 25,
            fontFamily: 'Messiri'),
        bodyLarge: TextStyle(color: Color(0xff242424)),
      ),
      cardTheme: CardTheme(
          color: lightSecondary,
          elevation: 24,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          margin: EdgeInsets.symmetric(vertical: 64, horizontal: 24),
          surfaceTintColor: null),
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: lightPrimaly,
      ),
      dividerColor: lightPrimaly,
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25))),
        minimumSize: const Size(137, 51),
        backgroundColor: lightPrimaly,
      )),
      colorScheme: ColorScheme.fromSeed(
          seedColor: lightPrimaly,
          primary: lightPrimaly,
          onPrimary: Colors.white,
          secondary: Colors.red,
          onSecondary: Colors.blue),
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.black,
            size: 25,
          ),
          color: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Color(0xff242424),
            fontSize: 30,
          )),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedLabelStyle: TextStyle(fontSize: 16),
        unselectedLabelStyle: TextStyle(fontSize: 16),
        type: BottomNavigationBarType.fixed,
        backgroundColor: lightPrimaly,
        selectedItemColor: Color(0xff242424),
        unselectedItemColor: Colors.white,
      ));

  static ThemeData dark = ThemeData(
      textTheme: TextTheme(
        titleSmall: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: 'elMessiri'),
        titleMedium: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w600,
            fontFamily: 'Messiri'),
        titleLarge: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w600,
            fontFamily: 'Messiri'),
        bodySmall: TextStyle(
            color: darkSecondary,
            fontSize: 20,
            fontWeight: FontWeight.w400,
            fontFamily: 'inter'),
        bodyMedium: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 25,
            fontFamily: 'Messiri'),
        bodyLarge: TextStyle(color: Colors.white),
      ),
      cardTheme: CardTheme(
          color: darkPrimaly,
          elevation: 24,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          margin: EdgeInsets.symmetric(vertical: 64, horizontal: 24),
          surfaceTintColor: null),
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: darkSecondary,
      ),
      dividerColor: darkSecondary,
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: darkSecondary, onPrimary: Colors.black)),
      colorScheme: ColorScheme.fromSeed(
          seedColor: darkPrimaly,
          primary: darkPrimaly,
          onPrimary: darkPrimaly,
          secondary: darkSecondary,
          onSecondary: Colors.blue),
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.white,
            size: 30,
          ),
          color: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: lightSecondary,
            fontSize: 30,
          )),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedLabelStyle: TextStyle(fontSize: 16),
        unselectedLabelStyle: TextStyle(fontSize: 16),
        type: BottomNavigationBarType.fixed,
        backgroundColor: darkPrimaly,
        selectedItemColor: darkSecondary,
        unselectedItemColor: Colors.white,
      ));
}
