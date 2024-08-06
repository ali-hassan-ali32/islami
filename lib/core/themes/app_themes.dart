import 'package:flutter/material.dart';

class AppTheme {
  static Color primalyLightColor = Color(0xffB7935F);
  static Color secondaryLightColor = Colors.white;

  static ThemeData light = ThemeData(
      colorScheme: ColorScheme.fromSeed(
          seedColor: primalyLightColor,
          primary: primalyLightColor,
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
        backgroundColor: primalyLightColor,
        selectedItemColor: Color(0xff242424),
        unselectedItemColor: Colors.white,
      ));
}
