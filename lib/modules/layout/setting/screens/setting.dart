import 'package:flutter/material.dart';

import '../../../../core/providers/locale/locale_provider.dart';
import '../../../../core/providers/theme/theme_provider.dart';
import '../../../../core/utils/get_translation.dart';
import '../widgets/lanauge_settings.dart';
import '../widgets/theme_settings.dart';

class SettingScreen extends StatelessWidget {
  static const String routeName = 'SettingScreen';

  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var localeProvider = LocaleProvider.get(context);
    var themeProvider = ThemeProvider.get(context);

    return Padding(
      padding: const EdgeInsets.only(top: 36.0, left: 12, right: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(getTranslation(context).theme,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontSize: 22)),
          const SizedBox(
            height: 10,
          ),
          ThemeSettings(themeProvider: themeProvider),
          const SizedBox(
            height: 24,
          ),
          Text(
            getTranslation(context).language,
            style:
                Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 22),
          ),
          const SizedBox(
            height: 10,
          ),
          LanuageSettings(localeProvider: localeProvider),
        ],
      ),
    );
  }
}
