import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/providers/main_provider.dart';
import '../../../../core/providers/theme/theme_provider.dart';
import '../../../../core/utils/get_translation.dart';
import '../widgets/animated_sebha.dart';
import '../widgets/sebha_counter.dart';

class SabhaScreen extends StatelessWidget {
  static const String routeName = 'SabhaScreen';

  const SabhaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var themeProvider = ThemeProvider.get(context);

    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 64),
      physics: const BouncingScrollPhysics(),
      child: Consumer<MainProvider>(
        builder: (context, provider, child) => Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AnimatedSebha(themeProvider: themeProvider, size: size),
            Padding(
              padding: EdgeInsets.only(bottom: size.height * 0.01, top: 20),
              child: Text(getTranslation(context).numberOfPraises,
                  style: Theme.of(context).textTheme.bodyMedium),
            ),
            Container(
              width: size.width * 0.2,
              height: size.height * 0.08,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.onSecondary,
                  borderRadius: const BorderRadius.all(Radius.circular(25))),
              child: Center(
                  child: Text('${provider.praisesNumber}',
                      style: const TextStyle(fontSize: 25))),
            ),
            SebhaCounter(size: size),
          ],
        ),
      ),
    );
  }
}

