import 'package:flutter/material.dart';
import 'package:islamic_app/core/themes/app_themes.dart';
import 'package:islamic_app/modules/layout/quran/screen/Chapter_details.dart';
import 'package:islamic_app/modules/layout/screens/layout_screen.dart';
import 'package:islamic_app/modules/splash/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'islamic',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (_) => SplashScreen(),
        LayoutScreen.routeName: (_) => LayoutScreen(),
        ChapterDetailsScreen.routeName: (_) => ChapterDetailsScreen(),
      },
    );
  }
}