import 'package:flutter/material.dart';

class VerseContent extends StatelessWidget {
  final String content;
  final int index;

  VerseContent({
    super.key,
    required this.content,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      textDirection: TextDirection.rtl,
      '${content} (${index + 1}).',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 25,
      ),
    );
  }
}
