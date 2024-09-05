import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/core/utils/get_translation.dart';
import 'package:islamic_app/core/widgets/background_widget.dart';

import '../widgets/hadith_builder.dart';
import '../widgets/hadith_header.dart';

class HadithDetailsScreen extends StatefulWidget {
  static const String routeName = 'HadithDetailsScreen';

  const HadithDetailsScreen({super.key});

  @override
  State<HadithDetailsScreen> createState() => _HadithDetailsScreenState();
}

class _HadithDetailsScreenState extends State<HadithDetailsScreen> {
  List<String> hadith = [];

  @override
  Widget build(BuildContext context) {
    var arg = ModalRoute.of(context)!.settings.arguments as HadithDetailsArg;

    if (hadith.isEmpty) {
      _readHadithFile(arg.fileIndex);
    }

    return BackgroundWidget(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            getTranslation(context).islami,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        body: Card(
          child: hadith.isEmpty
              ? const Center(child: CircularProgressIndicator())
              : Column(
                  children: [
                    HadithHeader(hadith: hadith, fontSize: 20),
                    Divider(
                      thickness: 2,
                      height: 2,
                      indent: 55,
                      color: Theme.of(context).dividerColor,
                      endIndent: 50,
                    ),
                    HadithBuilder(hadith: hadith, fontSize: 20),
                  ],
                ),
        ),
      ),
    );
  }

  void _readHadithFile(int fileIndex) async {
    String fileContent =
        await rootBundle.loadString('assets/hadith/h${fileIndex + 1}.txt');
    List<String> lines = fileContent.trim().split('\n');
    setState(() {
      hadith = lines;
    });
  }
}

class HadithDetailsArg {
  int fileIndex;

  HadithDetailsArg({required this.fileIndex});
}
