import 'package:flutter/material.dart';

class HadithHeader extends StatelessWidget {
  const HadithHeader({
    super.key,
    required this.hadith,
    required this.fontSize,
  });

  final List<String> hadith;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
      child: Text(
        hadith[0],
        textAlign: TextAlign.center,
        textDirection: TextDirection.rtl,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontFamily: 'inter',
              fontSize: 25,
            ),
      ),
    );
  }
}
