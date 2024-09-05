import 'package:flutter/material.dart';

import '../../../../core/providers/theme/theme_provider.dart';
import '../../../../core/utils/get_translation.dart';

class RadioScreen extends StatefulWidget {
  static const String routeName = 'RadioScreen';

  const RadioScreen({super.key});

  @override
  State<RadioScreen> createState() => _RadioScreenState();
}

class _RadioScreenState extends State<RadioScreen> {
  @override
  Widget build(BuildContext context) {
    var themeProvider = ThemeProvider.get(context);
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Center(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Responsive image
            Container(
              width: screenWidth * 0.9,
              // Responsive width
              height: screenHeight * 0.25,
              // Responsive height
              margin: const EdgeInsets.symmetric(vertical: 20),
              // Vertical margin
              child: Image.asset(
                "assets/images/551-5517026_radio-vector-png-old-radio-png-vector-transparent.png",
                fit: BoxFit.contain,
              ),
            ),
            // Responsive text
            Padding(
              padding: EdgeInsets.symmetric(vertical: screenHeight * 0.02),
              // Vertical padding
              child: Text(
                getTranslation(context).holyQuranRadio,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontSize: screenWidth * 0.05, // Responsive font size
                    ),
                textAlign: TextAlign.center,
              ),
            ),
            // Responsive icon buttons
            Padding(
              padding: EdgeInsets.symmetric(vertical: screenHeight * 0.05),
              // Vertical padding
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: ImageIcon(
                      AssetImage(themeProvider.isDarkEnable()
                          ? 'assets/icons/dark-metro-prev.png'
                          : 'assets/icons/Icon metro-back.png'),
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.1), // Responsive spacing
                  IconButton(
                    onPressed: () {},
                    icon: ImageIcon(
                      AssetImage(themeProvider.isDarkEnable()
                          ? 'assets/icons/dark-awesome-play.png'
                          : 'assets/icons/Icon awesome-play.png'),
                      size: screenWidth * 0.1, // Responsive icon size
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.1), // Responsive spacing
                  IconButton(
                    onPressed: () {},
                    icon: ImageIcon(
                      AssetImage(themeProvider.isDarkEnable()
                          ? 'assets/icons/dark-metro-next.png'
                          : 'assets/icons/Icon metro-next.png'),
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
