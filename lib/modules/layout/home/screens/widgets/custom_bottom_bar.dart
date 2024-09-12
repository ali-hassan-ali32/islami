import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:awesome_bottom_bar/widgets/inspired/inspired.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../core/providers/main_provider.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({
    super.key,
    required this.items,
    required this.screenHeight,
    required this.screenWidth,
  });

  final List<TabItem> items;
  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Consumer<MainProvider>(
      builder: (context, provider, child) => SizedBox(
        height: 72.0,
        child: BottomBarInspiredOutside(
          items: items,
          backgroundColor: Theme.of(context).colorScheme.onSecondary,
          color: Colors.white,
          colorSelected: Theme.of(context).colorScheme.tertiary,
          indexSelected: provider.selectedTap,
          onTap: provider.changeTap,
          top: -screenHeight * 0.03,
          elevation: 0,
          animated: true,
          isAnimated: true,
          height: 72.0,
          titleStyle: TextStyle(
            fontSize: screenWidth * 0.03,
          ),
          iconSize: screenWidth * 0.05,
          itemStyle: ItemStyle.hexagon,
          chipStyle: ChipStyle(
            background: Theme.of(context).colorScheme.onSecondary,
            color: Colors.white,
            convexBridge: true,
            notchSmoothness: NotchSmoothness.defaultEdge,
            drawHexagon: true,
            size: screenWidth * 0.1,
          ),
        ),
      ),
    );
  }
}
