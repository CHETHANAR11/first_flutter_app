import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DicerollerState();
  }
}

class _DicerollerState extends State<DiceRoller> {
  var currentDice = 2;

  void rollit() {
    //function
    setState(() {
      currentDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDice.png',
          width: 200,
        ),
        //const SizedBox(height: 20),//alternative of padding
        TextButton(
          onPressed: rollit, //void fun call
          style: TextButton.styleFrom(
              padding: const EdgeInsets.only(top: 20), //space btw but and txt
              foregroundColor: Colors.black, //buttom clr
              textStyle: const TextStyle(fontSize: 28)), //button txt size
          child: const Text('Roll it!!'),
        )
      ],
    );
  }
}
