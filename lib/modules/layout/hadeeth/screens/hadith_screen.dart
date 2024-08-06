import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/core/functions/get_image_path.dart';
import 'package:islamic_app/core/themes/app_themes.dart';
import 'package:islamic_app/modules/layout/hadeeth/widgets/hadith_title.dart';

class HadithsScreen extends StatelessWidget {
  static final String routeName = 'HadesScreen';

  const HadithsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(getImagePath('hadith_header')),
        Container(
          width: double.infinity,
          height: 2,
          color: AppTheme.primalyLightColor,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Hadiths',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: 2,
          color: AppTheme.primalyLightColor,
        ),
        Expanded(
          child: ListView.separated(
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return HadithTitle(fileIndex: index);
              },
              separatorBuilder: (context, index) {
                return Container(
                  width: double.infinity,
                  height: 2,
                  color: AppTheme.primalyLightColor,
                );
              },
              itemCount: 50),
        )
      ],
    );
  }

  void _readHadithData(int fileIndex) async {
    String fileContent =
        await rootBundle.loadString('assets/hadith/h${fileIndex + 1}.txt');
  }
}

class Hadith {
  String title;
  String content;

  Hadith({required this.title, required this.content});
}
