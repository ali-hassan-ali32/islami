import 'package:flutter/material.dart';
import 'package:islamic_app/modules/layout/setting/widgets/selected_item.dart';
import 'package:islamic_app/modules/layout/setting/widgets/unselected_item.dart';
import 'package:provider/provider.dart';

import '../../../../core/providers/theme/theme_provider.dart';
import '../../../../core/utils/get_translation.dart';

class ThemeBottomSheet extends StatefulWidget {
  const ThemeBottomSheet({super.key});

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    return Container(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
              splashColor: Theme.of(context).colorScheme.secondary,
              onTap: () {
                setState(() {
                  if (themeProvider.currentTheme != ThemeMode.light) {
                    themeProvider.changeTheme(ThemeMode.light);
                  }
                });
              },
              child: themeProvider.isDarkEnable()
                  ? UnSelectedItem(
                      context: context, text: getTranslation(context).light)
                  : SelectedItem(
                      context: context, text: getTranslation(context).light)),
          const SizedBox(
            height: 24,
          ),
          InkWell(
              splashColor: Theme.of(context).colorScheme.secondary,
              onTap: () {
                setState(() {
                  themeProvider.changeTheme(ThemeMode.dark);
                });
              },
              child: themeProvider.isDarkEnable()
                  ? SelectedItem(
                      context: context, text: getTranslation(context).dark)
                  : UnSelectedItem(
                      context: context, text: getTranslation(context).dark)),
        ],
      ),
    );
  }
}

