import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int leftCount = 3;
  int rightCount = 6;
  void throwDice() {
    setState(() {
      leftCount = Random().nextInt(6) + 1;
      rightCount = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: throwDice,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 10),
                    child: Image.asset(
                      'image/dice$leftCount.png',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: throwDice,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 20),
                    child: Image.asset(
                      'image/dice$rightCount.png',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
