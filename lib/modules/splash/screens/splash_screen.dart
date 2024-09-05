import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:islamic_app/modules/layout/home/screens/home_screen.dart';

import '../../../core/providers/theme/theme_provider.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = '/';

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.pushNamedAndRemoveUntil(
            context, HomeScreen.routeName, (route) => false);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var themeProvider = ThemeProvider.get(context);
    Size size = MediaQuery.of(context).size;

    return DecoratedBox(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(themeProvider.isDarkEnable()
                    ? 'assets/images/bg-dark.png'
                    : 'assets/images/bg.png'),
                fit: BoxFit.fill)),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              children: [
                const Spacer(
                  flex: 2,
                ),
                ZoomIn(
                    duration: const Duration(seconds: 2),
                    child: Center(
                      child: Image.asset(themeProvider.isDarkEnable()
                          ? 'assets/images/logo-dark.png'
                          : 'assets/images/logo.png'),
                    )),
                const Spacer(),
                Image.asset(themeProvider.isDarkEnable()
                    ? 'assets/images/logo-route-dark.png'
                    : 'assets/images/logo-route.png')
              ],
            )));
  }
}
