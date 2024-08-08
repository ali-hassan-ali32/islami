import 'package:flutter/material.dart';
import 'package:islamic_app/core/functions/get_translation.dart';
import 'package:islamic_app/core/widgets/background_widget.dart';
import 'package:islamic_app/providers/theme/theme_provider.dart';

class RadioScreen extends StatefulWidget {
  static final String routeName = 'RadioScreen';

  const RadioScreen({super.key});

  @override
  State<RadioScreen> createState() => _RadioScreenState();
}

class _RadioScreenState extends State<RadioScreen> {
  @override
  Widget build(BuildContext context) {
    var themeProvider = ThemeProvider.get(context);
    return BackgroundWidget(
        child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Image.asset(
                'assets/images/551-5517026_radio-vector-png-old-radio-png-vector-transparent.png'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Text(getTranslation(context).holyQuranRadio,
                style: Theme.of(context).textTheme.bodyMedium),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 75),
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
                    )),
                const SizedBox(
                  width: 50,
                ),
                IconButton(
                    onPressed: () {},
                    icon: ImageIcon(
                      AssetImage(themeProvider.isDarkEnable()
                          ? 'assets/icons/dark-awesome-play.png'
                          : 'assets/icons/Icon awesome-play.png'),
                      size: 35,
                      color: Theme.of(context).colorScheme.secondary,
                    )),
                const SizedBox(
                  width: 50,
                ),
                IconButton(
                    onPressed: () {},
                    icon: ImageIcon(
                      AssetImage(themeProvider.isDarkEnable()
                          ? 'assets/icons/dark-metro-next.png'
                          : 'assets/icons/Icon metro-next.png'),
                      color: Theme.of(context).colorScheme.secondary,
                    )),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
