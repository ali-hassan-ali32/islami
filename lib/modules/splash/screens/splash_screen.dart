import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islamic_app/modules/layout/screens/layout_screen.dart';

class SplashScreen extends StatefulWidget {
  static final String routeName = '/';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(
      Duration(seconds: 3),
      () {
        Navigator.pushNamedAndRemoveUntil(
            context, LayoutScreen.routeName, (route) => false);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/splash.png');
  }
}
