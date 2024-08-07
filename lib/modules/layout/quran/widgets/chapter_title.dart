import 'package:flutter/material.dart';
import 'package:islamic_app/modules/layout/quran/screen/Chapter_details.dart';

class ChapterTitle extends StatelessWidget {
  String text;
  int index;

  ChapterTitle({
    super.key,
    required this.text,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, ChapterDetailsScreen.routeName,
            arguments: ChapterDetailsArg(title: text, index: index));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 25,
              color: Theme.of(context).textTheme.bodyMedium!.color,
              fontFamily: 'inter'),
        ),
      ),
    );
  }
}
