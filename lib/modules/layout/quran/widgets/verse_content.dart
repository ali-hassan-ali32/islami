import 'package:flutter/material.dart';

class VerseContent extends StatelessWidget {
  final List<String> aya;
  final Size size;

  const VerseContent({
    super.key,
    required this.aya,
    required this.size
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          textDirection: TextDirection.rtl,
            aya.join(),
            textAlign: TextAlign.justify,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 16)
        ),
      ),
    );
  }
}
