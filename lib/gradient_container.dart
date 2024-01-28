import 'package:flutter/material.dart';
import 'package:flutter_application_1/dice_roller.dart';
import 'package:flutter_application_1/text_container.dart';

class GradientContainaer extends StatelessWidget {
 const GradientContainaer(this.dark, this.light, {super.key});
  final Color dark;
  final Color light;
  
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            light,
            dark,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child:const Center(
        child: DiceRoller(),
        // child: Image.asset('assets/dice-1.png'),
      ),
    );
  }
}
