import 'package:flutter/material.dart';
import 'package:islamic_app/core/themes/app_themes.dart';

class BackgroundWidget extends StatelessWidget {
  Widget child;

  BackgroundWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: const AssetImage(AppTheme.isDark
                    ? 'assets/images/bg_dark.png'
                    : 'assets/images/bg3.png'),
                fit: BoxFit.cover)),
        child: child,
      ),
    );
  }
}
