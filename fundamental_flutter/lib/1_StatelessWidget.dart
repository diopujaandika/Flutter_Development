import 'package:flutter/material.dart';

class HeadingStateless extends StatelessWidget{
  final String text;

  const HeadingStateless ({Key? key, required this.text}) :super (key:key);

  Widget build(BuildContext context){
    return  Text(
      text,
      style: const TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}