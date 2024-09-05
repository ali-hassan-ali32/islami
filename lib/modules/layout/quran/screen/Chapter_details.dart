import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/core/widgets/background_widget.dart';
import 'package:islamic_app/modules/layout/quran/widgets/verse_content.dart';
class ChapterDetailsScreen extends StatefulWidget {
  static const routeName = 'ChapterDetailsScreen';

  const ChapterDetailsScreen({super.key});

  @override
  State<ChapterDetailsScreen> createState() => _ChapterDetailsScreenState();
}

class _ChapterDetailsScreenState extends State<ChapterDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final ChapterDetailsArg arg =
        ModalRoute.of(context)!.settings.arguments as ChapterDetailsArg;

    if (verses.isEmpty) {
      _readSuraData(arg.index);
    }

    return BackgroundWidget(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            arg.title,
            style: theme.textTheme.titleLarge!.copyWith(
              color: theme.colorScheme.secondary,
            ),
          ),
        ),
        body: Card(
          elevation: 24,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          margin: const EdgeInsets.symmetric(vertical: 64, horizontal: 24),
          child: verses.isEmpty
              ? const Center(child: CircularProgressIndicator())
              : ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) => VerseContent(
                    size: MediaQuery.of(context).size,
                    aya: verses,
                  ),
                  itemCount: 1,
                ),
        ),
      ),
    );
  }

  void _addAyaNumbers(List<String> chapter) {
    int counter = 1;
    for (int i = 0; i < chapter.length; i++) {
      if (i % 2 != 0) {
        chapter.insert(i, ' ($counter)');
        counter++;
      }
    }
  }

  Future<void> _readSuraData(int fileIndex) async {
    String fileContent =
        await rootBundle.loadString('assets/suras/${fileIndex + 1}.txt');
    List<String> lines = fileContent.trim().split('\n');
    _addAyaNumbers(lines);
    setState(() {
      verses = lines;
    });
  }
}

class ChapterDetailsArg {
  final String title;
  final int index;
  ChapterDetailsArg({required this.title, required this.index});
}
