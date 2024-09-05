import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/providers/main_provider.dart';
import '../../../../core/providers/theme/theme_provider.dart';

class AnimatedSebha extends StatelessWidget {
  const AnimatedSebha({
    super.key,
    required this.themeProvider,
    required this.size,
  });

  final ThemeProvider themeProvider;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Consumer<MainProvider>(
      builder: (context, provider, child) => Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 79),
            child: AnimatedRotation(
              turns: provider.turns,
              duration: const Duration(milliseconds: 150),
              child: Image(
                fit: BoxFit.cover,
                width: themeProvider.isDarkEnable()
                    ? size.width * 0.6
                    : size.width * 0.8,
                height: themeProvider.isDarkEnable()
                    ? size.height * 0.29
                    : size.height * 0.3,
                image: themeProvider.isDarkEnable()
                    ? const AssetImage('assets/images/dark-body of seb7a.png')
                    : const AssetImage('assets/images/body of seb7a.png'),
              ),
            ),
          ),
          Positioned(
            left: themeProvider.isDarkEnable()
                ? (size.width * 0.28)
                : (size.width * 0.35),
            bottom: size.height * 0.265,
            child: Image(
              fit: BoxFit.cover,
              width: size.width * 0.18,
              height: size.height * 0.11,
              image: themeProvider.isDarkEnable()
                  ? const AssetImage('assets/images/dark-head of seb7a.png')
                  : const AssetImage('assets/images/head of seb7a.png'),
            ),
          ),
        ],
      ),
    );
  }
}
