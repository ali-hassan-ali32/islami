import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/providers/main_provider.dart';
import 'chapter_title.dart';

class ChaptersListView extends StatelessWidget {
  const ChaptersListView({
    super.key,
    required this.selectedLocale,
  });

  final Locale selectedLocale;

  @override
  Widget build(BuildContext context) {
    return Consumer<MainProvider>(
      builder: (context, provider, child) => Expanded(
        child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            separatorBuilder: (context, index) => const SizedBox(
                  height: 5,
                ),
            itemBuilder: (context, index) {
              return ChapterTitle(
                suraContent: selectedLocale.languageCode == 'en'
                    ? provider.englishQuranSurahs[index]
                    : provider.arabicAuranSuras[index],
                index: index,
                ayaNumber: provider.ayaNumbers[index],
              );
            },
            itemCount: 114),
      ),
    );
  }
}
