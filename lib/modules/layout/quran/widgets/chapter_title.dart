import 'package:flutter/material.dart';
import 'package:islamic_app/modules/layout/quran/screen/Chapter_details.dart';

class ChapterTitle extends StatelessWidget {
  final String suraContent;
  final String ayaNumber;
  final int index;

  const ChapterTitle({
    super.key,
    required this.suraContent,
    required this.index,
    required this.ayaNumber,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return InkWell(
      splashColor: theme.colorScheme.secondary,
      onTap: () {
        Navigator.pushNamed(
          context,
          ChapterDetailsScreen.routeName,
          arguments: ChapterDetailsArg(title: suraContent, index: index),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Icon(
                Icons.star,
                color: theme.colorScheme.secondary,
              ),
            ),
            Expanded(
              flex: 5,
              child: Text(
                suraContent,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18,
                  color: theme.textTheme.bodyMedium!.color,
                  fontFamily: 'inter',
                ),
              ),
            ),
            Text(
              ayaNumber,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 18,
                color: theme.textTheme.bodyMedium!.color,
                fontFamily: 'inter',
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Icon(
                Icons.star,
                color: theme.colorScheme.secondary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
