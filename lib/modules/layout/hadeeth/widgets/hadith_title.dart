import 'package:flutter/material.dart';
import 'package:islamic_app/modules/layout/hadeeth/screens/hadith_details.dart';

class HadithTitle extends StatelessWidget {
  int fileIndex;

  HadithTitle({super.key, required this.fileIndex});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HadithDetailsScreen.routeName,
            arguments: HadithDetailsArg(fileIndex: fileIndex));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'Hadith Number (${fileIndex + 1}).',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
