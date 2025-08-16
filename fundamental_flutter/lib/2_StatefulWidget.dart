import 'package:flutter/material.dart';

class BiggerText extends StatefulWidget{
  final String text;

  const BiggerText({Key? key, required this.text}) : super(key: key);

  @override
  State<BiggerText> createState() => _BiggerTextState();
}

class _BiggerTextState extends State<BiggerText> {
  double _textSize = 16.0;

  @override
  Widget build(BuildContext){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:<Widget>[
        Text(
          widget.text,
          style: TextStyle(
            fontSize: _textSize
          )
        ),
        ElevatedButton(
            onPressed: (){
              print('Button Clicked');
              setState(() {
                _textSize = 32.0;
              });
            }, child: const Text("Button!")
        )
      ],
    );
  }
}