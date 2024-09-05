import 'package:flutter/material.dart';
import 'package:islamic_app/modules/layout/setting/widgets/selected_item.dart';
import 'package:islamic_app/modules/layout/setting/widgets/unselected_item.dart';

import '../../../../core/providers/locale/locale_provider.dart';

class LanguageBottomSheet extends StatefulWidget {
  const LanguageBottomSheet({super.key});

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var localeProvider = LocaleProvider.get(context);
    return Container(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
              splashColor: Theme.of(context).colorScheme.secondary,
              onTap: () {
                setState(() {
                  localeProvider.changeLocale('en');
                });
              },
              child: localeProvider.currentLocaleCode == 'en'
                  ? SelectedItem(context: context, text: 'English')
                  : UnSelectedItem(context: context, text: 'English')),
          const SizedBox(
            height: 24,
          ),
          InkWell(
              splashColor: Theme.of(context).colorScheme.secondary,
              onTap: () {
                setState(() {
                  localeProvider.changeLocale('ar');
                });
              },
              child: localeProvider.currentLocaleCode == 'ar'
                  ? SelectedItem(context: context, text: 'ِالعربية')
                  : UnSelectedItem(context: context, text: 'العربية')),
        ],
      ),
    );
  }
}
