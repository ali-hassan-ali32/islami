import 'package:flutter/material.dart';

class SabhaScreen extends StatefulWidget {
  static final String routeName = 'SabhaScreen';

  const SabhaScreen({super.key});

  @override
  State<SabhaScreen> createState() => _SabhaScreenState();
}

class _SabhaScreenState extends State<SabhaScreen> {
  int praisesNumber = 0;
  int selectedPraise = 0;
  int angle = 0;
  List<String> praisesName = [
    'سبحان الله',
    'الحمد الله',
    'الله اكبر',
    'لا إله إلا الله وحده لا شريك له، له الملك، وله الحمد، وهو على كل شيء قدير'
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              Container(
                margin: EdgeInsets.only(top: 70),
                width: 250,
                height: 250,
                child: Transform.rotate(
                  angle: 0.1 * angle,
                  alignment: Alignment.center, // origin: Offset(0, 0)
                  child: Image.asset(
                    'assets/images/body of seb7a.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // Positioned(top: 65,right: 5,child: Image.asset('assets/images/body of seb7a.png')),
              Positioned(
                  top: 25,
                  right: 70,
                  child: Image.asset('assets/images/head of seb7a.png')),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16, top: 25),
            child: const Text(
              'Number of praises',
              style: TextStyle(fontSize: 25),
            ),
          ),
          // SizedBox(height: 0,),
          Container(
            width: 55,
            height: 60,
            decoration: BoxDecoration(
                color: Color(0xffceb490),
                borderRadius: BorderRadius.all(Radius.circular(25))),
            child: Center(
                child: Text('$praisesNumber', style: TextStyle(fontSize: 25))),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    praisesNumber++;
                    angle++;
                    angle %= 10;
                    if (selectedPraise == 3) {
                      praisesNumber = 0;
                      selectedPraise = 0;
                    } else {
                      if (praisesNumber == 34) {
                        praisesNumber = 0;
                        selectedPraise++;
                      }
                    }
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffB7935F),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  minimumSize: const Size(137, 51),
                ),
                child: Text(
                  praisesName[selectedPraise],
                  style: TextStyle(fontSize: 25),
                )),
          ),
        ],
      ),
    );
  }
}
