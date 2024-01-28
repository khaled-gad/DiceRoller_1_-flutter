import 'package:flutter/material.dart';
import 'dart:math';
final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState(){
    return _DicerollerState();
  }
}


class _DicerollerState extends  State<DiceRoller>{
  var activeFace = 1;
  void rollDice(){
    setState(() {
      activeFace  =  randomizer .nextInt(6)+1;
    }); 
    print('changing'); 
  }
  @override
  Widget build(context) {
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/dice-$activeFace.png',
              width: 200,
            ),
            const SizedBox(height: 20,),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                // backgroundColor: const Color.fromARGB(255, 7, 172, 255),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 35,
                ),
              ),
              child: const Text('Roll Dice '),
            )
          ],
        );

  }
}