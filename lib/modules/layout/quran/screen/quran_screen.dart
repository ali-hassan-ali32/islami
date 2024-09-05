import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/providers/main_provider.dart';
import '../../../../core/utils/get_image_path.dart';
import '../../../../core/utils/get_translation.dart';
import '../widgets/chapters_list_view.dart';

class QuranScreen extends StatelessWidget {
  static const String routeName = 'QuranScreen';

  const QuranScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Locale selectedLocale = Localizations.localeOf(context);
    final Size size = MediaQuery.of(context).size;

    return Consumer<MainProvider>(
      builder: (context, provider, child) => Column(
        children: [
          Image(
              height: size.height * 0.3,
              image: AssetImage(getImagePath('quran_header_icn'))),
          const Divider(
            thickness: 2.5,
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              children: [
                const Spacer(),
                Text(getTranslation(context).chapterName,
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontSize: 20)),
                const Spacer(
                  flex: 3,
                ),
                Text(
                  getTranslation(context).ayaNumber,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontSize: 20),
                ),
                const Spacer(),
              ],
            ),
          ),
          const Divider(
            thickness: 2.5,
            height: 2,
          ),
          const SizedBox(
            height: 10,
          ),
          ChaptersListView(selectedLocale: selectedLocale),
        ],
      ),
    );
  }
}
