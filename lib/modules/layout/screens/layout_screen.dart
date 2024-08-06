import 'package:flutter/material.dart';
import 'package:islamic_app/core/widgets/background_widget.dart';
import 'package:islamic_app/modules/layout/quran/screen/quran_screen.dart';
import 'package:islamic_app/modules/layout/screens/hades_screen.dart';
import 'package:islamic_app/modules/layout/screens/radio_screen.dart';
import 'package:islamic_app/modules/layout/screens/sabha_screen.dart';
import 'package:islamic_app/modules/layout/screens/setting.dart';

class LayoutScreen extends StatefulWidget {
  static final String routeName = 'LayoutScreen';

  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int selectedIndex = 0;
  List<Widget> screens = [
    RadioScreen(),
    SabhaScreen(),
    HadesScreen(),
    QuranScreen(),
    SettingScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
        child: Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: const Text('islamic'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/icons/radio_blue.png'),
                size: 32,
              ),
              label: 'radio'),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/icons/sebha.png'),
                size: 32,
              ),
              label: 'sabha'),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/icons/hades.png'),
                size: 32,
              ),
              label: 'hades'),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/icons/quran.png'),
                size: 32,
              ),
              label: 'quran'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'setting'),
        ],
      ),
      body: screens[selectedIndex],
    ));
  }
}
