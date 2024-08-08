import 'package:flutter/material.dart';
import 'package:islamic_app/core/functions/get_translation.dart';
import 'package:islamic_app/modules/layout/setting/widgets/language_bottom_sheet.dart';
import 'package:islamic_app/modules/layout/setting/widgets/theme_bottom_sheet.dart';
import 'package:islamic_app/providers/locale/locale_provider.dart';
import 'package:islamic_app/providers/theme/theme_provider.dart';

class SettingScreen extends StatelessWidget {
  static final String routeName = 'SettingScreen';

  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var localeProvider = LocaleProvider.get(context);
    var themeProvider = ThemeProvider.get(context);
    return Padding(
      padding: const EdgeInsets.only(top: 36.0, left: 12, right: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(getTranslation(context).theme),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              _showThemeBottomSheet(context);
            },
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Theme.of(context).colorScheme.secondary),
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(25)),
              child: Text(
                themeProvider.getCurrentThemeText(context),
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Theme.of(context).colorScheme.secondary),
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Text(getTranslation(context).language),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              _showLanguageBottomSheet(context);
            },
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Theme.of(context).colorScheme.secondary),
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(25)),
              child: Text(
                localeProvider.getCurrentLocaleText(),
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Theme.of(context).colorScheme.secondary),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showThemeBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return ThemeBottomSheet();
      },
    );
  }

  void _showLanguageBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return LanguageBottomSheet();
      },
    );
  }
}
