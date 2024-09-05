import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/providers/main_provider.dart';

class SebhaCounter extends StatelessWidget {
  const SebhaCounter({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Consumer<MainProvider>(
      builder: (context, provider, child) => Padding(
        padding: EdgeInsets.symmetric(vertical: size.height * 0.02),
        child: ElevatedButton(
            onPressed: provider.sebhaCounter,
            style: Theme.of(context).elevatedButtonTheme.style,
            child: Text(provider.praisesName[provider.selectedPraise],
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Theme.of(context).cardColor))),
      ),
    );
  }
}
