import 'package:flutter/material.dart';

import 'hadith_title.dart';

class HadithsListView extends StatelessWidget {
  const HadithsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return HadithTitle(fileIndex: index);
        },
        itemCount: 50,
      ),
    );
  }
}
