import 'package:flutter/material.dart';
import 'package:islamic_app/core/providers/main_provider.dart';
import 'package:islamic_app/core/utils/get_translation.dart';
import 'package:provider/provider.dart';

import '../../../../core/providers/locale/locale_provider.dart';
import '../screens/hadith_details.dart';

class HadithTitle extends StatelessWidget {
  final int fileIndex;

  const HadithTitle({super.key, required this.fileIndex});

  @override
  Widget build(BuildContext context) {
    return Consumer2<MainProvider, LocaleProvider>(
      builder: (context, value, value2, child) => InkWell(
        onTap: () {
          Navigator.pushNamed(context, HadithDetailsScreen.routeName,
              arguments: HadithDetailsArg(fileIndex: fileIndex));
        },
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Text(
            '${getTranslation(context).hadithNumber} ${value.numberToText(number: (fileIndex + 1), lang: value2.currentLocaleCode)}',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'inter',
              color: Theme.of(context).textTheme.bodyMedium!.color,
            ),
          ),
        ),
      ),
    );
  }
}
