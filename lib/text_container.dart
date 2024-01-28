import 'package:flutter/material.dart';

class TextContainer extends StatelessWidget {
  const TextContainer(this.txt,{super.key});
   final String txt;
  
  
  @override
  Widget build(context) {
    return Text(
      txt,
      textScaler: const TextScaler.linear(2),
      style: const TextStyle(
        color: Color.fromARGB(255, 102, 20, 126),
        // fontFamily: String.fromEnvironment("times new roman"),
        fontSize: 23,
      ),
    );
  }
}
