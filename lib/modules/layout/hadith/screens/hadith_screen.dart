import 'package:flutter/material.dart';
import 'package:islamic_app/core/utils/get_image_path.dart';
import 'package:islamic_app/core/utils/get_translation.dart';
import 'package:provider/provider.dart';

import '../../../../core/providers/main_provider.dart';
import '../widgets/hadiths_list_view.dart';

class HadithsScreen extends StatelessWidget {
  static const String routeName = 'HadesScreen';

  const HadithsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double imageHeight = size.height * 0.3;
    const double dividerThickness = 2.5;

    return Consumer<MainProvider>(
      builder: (context, provider, child) => Column(
        children: [
          Image(
            height: imageHeight,
            image: AssetImage(getImagePath('hadith_header')),
            fit: BoxFit.cover,
          ),
          Divider(
            color: Theme.of(context).dividerColor,
            height: dividerThickness,
            thickness: dividerThickness,
          ),
          Padding(
            padding: const EdgeInsets.all(4),
            child: Text(
              getTranslation(context).hadiths,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontSize: 25),
            ),
          ),
          Divider(
            color: Theme.of(context).dividerColor,
            height: dividerThickness,
            thickness: dividerThickness,
          ),
          const SizedBox(
            height: 10,
          ),
          const HadithsListView(),
        ],
      ),
    );
  }
}
