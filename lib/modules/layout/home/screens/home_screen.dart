import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:islamic_app/core/widgets/background_widget.dart';
import 'package:islamic_app/modules/layout/home/screens/widgets/custom_bottom_bar.dart';
import 'package:provider/provider.dart';

import '../../../../core/providers/main_provider.dart';
import '../../../../core/utils/get_translation.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'LayoutScreen';

  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final List<TabItem> items = [
      TabItem(
        icon: Icons.radio,
        title: getTranslation(context).radio,
      ),
      TabItem(
        icon: Icons.access_alarm,
        title: getTranslation(context).sabha,
      ),
      TabItem(
        icon: Icons.menu_book,
        title: getTranslation(context).hadiths,
      ),
      TabItem(
        icon: Icons.book,
        title: getTranslation(context).quran,
      ),
      TabItem(
        icon: Icons.settings,
        title: getTranslation(context).setting,
      ),
    ];

    return BackgroundWidget(
      child: ChangeNotifierProvider(
        create: (context) => MainProvider(),
        builder: (context, child) => Consumer<MainProvider>(
          builder: (context, provider, child) => Scaffold(
            backgroundColor: Colors.transparent,
            bottomNavigationBar: CustomBottomBar(
                items: items,
                screenHeight: screenHeight,
                screenWidth: screenWidth),
            appBar: AppBar(
              title: Text(
                getTranslation(context).islami,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              toolbarHeight: screenHeight * 0.08,
            ),
            body: PageView(
              controller: provider.pageController,
              onPageChanged: provider.changePage,
              physics: const BouncingScrollPhysics(),
              children: provider.screens,
            ),
          ),
        ),
      ),
    );
  }
}

