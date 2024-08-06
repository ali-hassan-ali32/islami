import 'package:flutter/material.dart';
import 'package:islamic_app/core/widgets/background_widget.dart';

class ChapterDetailsScreen extends StatelessWidget {
  static const routeName = 'ChapterDetailsScreen';

  const ChapterDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var arg = ModalRoute.of(context)!.settings.arguments as ChapterDetailsArg;
    return BackgroundWidget(
        child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              title: Text(arg.title),
            ),
            body: Card(
              elevation: 24,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              margin: EdgeInsets.symmetric(vertical: 64, horizontal: 24),
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: 100,
                itemBuilder: (context, index) {
                  return Text('');
                },
              ),
            )));
  }
}

class ChapterDetailsArg {
  String title;
  int index;

  ChapterDetailsArg({required this.title, required this.index});
}
