import 'package:dice_app/components/dice_container.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});
  @override
  Widget build(context) {
    return Scaffold(
        body: Container(
          
      width: double.maxFinite,
      decoration:const BoxDecoration(
         borderRadius: BorderRadius.zero,
          gradient: LinearGradient(
              colors: [Colors.black, Colors.black54],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight)),
      child:const DiceContainer()
    ));
  }
}
