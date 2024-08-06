import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/core/themes/app_themes.dart';
import 'package:islamic_app/core/widgets/background_widget.dart';
import 'package:islamic_app/modules/layout/quran/widgets/verse_content.dart';

class ChapterDetailsScreen extends StatefulWidget {
  static const routeName = 'ChapterDetailsScreen';

  ChapterDetailsScreen({super.key});

  @override
  State<ChapterDetailsScreen> createState() => _ChapterDetailsScreenState();
}

class _ChapterDetailsScreenState extends State<ChapterDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var arg = ModalRoute.of(context)!.settings.arguments as ChapterDetailsArg;

    if (verses.isEmpty) {
      _readSuraData(arg.index);
    }

    return BackgroundWidget(
        child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              title: Text(arg.title),
            ),
            body: Card(
              elevation: 24,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              margin: EdgeInsets.symmetric(vertical: 64, horizontal: 24),
              child: verses.isEmpty
                  ? Center(child: CircularProgressIndicator())
                  : ListView.separated(
                      physics: BouncingScrollPhysics(),
                      itemCount: verses.length,
                      separatorBuilder: (context, index) {
                        return Container(
                          width: double.infinity,
                          height: 2,
                          color: AppTheme.primalyLightColor,
                          margin: EdgeInsets.symmetric(horizontal: 64),
                        );
                      },
                      itemBuilder: (context, index) {
                        return VerseContent(
                            content: verses[index], index: index);
                      },
                    ),
            )));
  }

  void _readSuraData(int fileIndex) async {
    String fileContent =
        await rootBundle.loadString('assets/suras/${fileIndex + 1}.txt');
    List<String> lines = fileContent.trim().split('\n');
    setState(() {
      verses = lines;
    });
  }
}

class ChapterDetailsArg {
  String title;
  int index;

  ChapterDetailsArg({required this.title, required this.index});
}
