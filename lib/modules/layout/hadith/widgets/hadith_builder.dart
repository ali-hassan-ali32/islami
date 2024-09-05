import 'package:flutter/material.dart';

class HadithBuilder extends StatelessWidget {
  const HadithBuilder({
    super.key,
    required this.hadith,
    required this.fontSize,
  });

  final List<String> hadith;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: hadith.length - 1,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 16,
            ),
            child: Text(
              hadith[index + 1],
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 16,
                  ),
            ),
          );
        },
      ),
    );
  }
}
