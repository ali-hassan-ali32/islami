import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/providers/main_provider.dart';
import '../../../../core/providers/theme/theme_provider.dart';

class ThemeSettings extends StatelessWidget {
  const ThemeSettings({
    super.key,
    required this.themeProvider,
  });

  final ThemeProvider themeProvider;

  @override
  Widget build(BuildContext context) {
    return Consumer<MainProvider>(
      builder: (context, provider, child) => InkWell(
        borderRadius: const BorderRadius.all(Radius.circular(25)),
        onTap: () {
          provider.showThemeBottomSheet(context);
        },
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          decoration: BoxDecoration(
              border:
                  Border.all(color: Theme.of(context).colorScheme.secondary),
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
    );
  }
}
