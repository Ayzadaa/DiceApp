import 'dart:math';

import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  DicePageState createState() => DicePageState();
}

class DicePageState extends State<DicePage> {
  int leftNumber = 1;
  int rightNumber = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 83, 83, 1),
      appBar: AppBar(
        title: const Text(
          'ТАПШЫРМА - 05',
          style: TextStyle(
              color: Colors.black, fontSize: 22, fontWeight: FontWeight.w700),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color.fromRGBO(255, 83, 83, 1),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            setState(() {
              leftNumber = Random().nextInt(7);
              rightNumber = Random().nextInt(7);
            });
          },
          child: Row(
            children: [
              Expanded(
                  child: InkWell(
                // onTap: () {
                //   setState(() {
                //     leftNumber = Random().nextInt(7);
                //   });
                // },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset(
                      'assets/dice${leftNumber == 0 ? leftNumber = 1 : leftNumber}.png'),
                ),
              )),
              Expanded(
                  child: InkWell(
                // onTap: () {
                //   setState(() {
                //     rightNumber = Random().nextInt(7);
                //   });
                // },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset(
                      'assets/dice${rightNumber == 0 ? rightNumber = 1 : rightNumber}.png'),
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
