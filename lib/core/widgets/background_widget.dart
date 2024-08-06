import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  Widget child;

  BackgroundWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: const AssetImage('assets/images/bg3.png'),
                fit: BoxFit.cover)),
        child: child,
      ),
    );
  }
}
