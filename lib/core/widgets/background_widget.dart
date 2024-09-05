import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/theme/theme_provider.dart';

class BackgroundWidget extends StatelessWidget {
  final Widget child;

  const BackgroundWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    bool isDark = themeProvider.isDarkEnable();
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(isDark
                    ? 'assets/images/bg_dark.png'
                    : 'assets/images/bg3.png'),
                fit: BoxFit.cover)),
        child: child,
      ),
    );
  }
}
