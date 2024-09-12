import 'package:flutter/material.dart';
import 'package:islamic_app/core/providers/main_provider.dart';
import 'package:islamic_app/core/utils/get_translation.dart';
import 'package:provider/provider.dart';

import '../screens/hadith_details.dart';

class HadithTitle extends StatelessWidget {
  final int fileIndex;

  const HadithTitle({super.key, required this.fileIndex});

  @override
  Widget build(BuildContext context) {
    return Consumer<MainProvider>(
      builder: (context, value, child) => InkWell(
        onTap: () {
          Navigator.pushNamed(context, HadithDetailsScreen.routeName,
              arguments: HadithDetailsArg(fileIndex: fileIndex));
        },
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Text(
            '${getTranslation(context).hadithNumber} ${value.numberToText((fileIndex + 1))}',
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
