import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/providers/locale/locale_provider.dart';
import '../../../../core/providers/main_provider.dart';

class LanuageSettings extends StatelessWidget {
  const LanuageSettings({
    super.key,
    required this.localeProvider,
  });

  final LocaleProvider localeProvider;

  @override
  Widget build(BuildContext context) {
    return Consumer<MainProvider>(
      builder: (context, provider, child) => InkWell(
        borderRadius: const BorderRadius.all(Radius.circular(25)),
        onTap: () {
          provider.showLanguageBottomSheet(context);
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
            localeProvider.getCurrentLocaleText(),
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
