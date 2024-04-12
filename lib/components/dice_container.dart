import 'dart:math';

import 'package:flutter/material.dart';

var randomizer = Random();

class DiceContainer extends StatefulWidget {
  const DiceContainer({super.key});
  @override
  State<DiceContainer> createState() => _MyDiceContainer();
}

class _MyDiceContainer extends State<DiceContainer> {
   num dice = 1;

  void handleDice(){
    setState(() {
      dice = randomizer.nextInt(6) + 1;
      
    });
  }
  @override
  Widget build(context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
        'assets/images/dice-$dice.png',
          width: 205,
        ),
        const SizedBox(
          height: 15,
        ),
        TextButton(
          onPressed: handleDice,
          child: const Text(
            "Roll Dice",
            style: TextStyle(fontSize: 20,
            color: Colors.white,
            
            ),
          ),
        )
      ],
    ));
  }
}
