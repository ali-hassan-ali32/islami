import 'package:flutter/material.dart';
import 'package:islamic_app/core/widgets/background_widget.dart';

class RadioScreen extends StatefulWidget {
  static final String routeName = 'RadioScreen';

  const RadioScreen({super.key});

  @override
  State<RadioScreen> createState() => _RadioScreenState();
}

class _RadioScreenState extends State<RadioScreen> {
  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
        child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Image.asset(
                'assets/images/551-5517026_radio-vector-png-old-radio-png-vector-transparent.png'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Text(
              'Holy Quran Radio',
                style: Theme.of(context).textTheme.bodyMedium),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: ImageIcon(
                      AssetImage('assets/icons/Icon metro-back.png'),
                      size: 32,
                      color: Color(0xffB7935F),
                    )),
                const SizedBox(
                  width: 50,
                ),
                IconButton(
                    onPressed: () {},
                    icon: ImageIcon(
                      AssetImage('assets/icons/Icon awesome-play.png'),
                      size: 32,
                      color: Color(0xffB7935F),
                    )),
                const SizedBox(
                  width: 50,
                ),
                IconButton(
                    onPressed: () {},
                    icon: ImageIcon(
                      AssetImage('assets/icons/Icon metro-next.png'),
                      size: 32,
                      color: Color(0xffB7935F),
                    )),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
