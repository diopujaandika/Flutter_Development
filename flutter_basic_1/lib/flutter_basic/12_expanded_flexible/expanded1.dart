import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{
  const MyApp ({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Flutter App',
      home: Rainbow(),
    );
  }
}

class Rainbow extends StatelessWidget{
  const Rainbow ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Column(
      children: <Widget>[
        Expanded(
            flex: 2,
            child: Container(
              color: Colors.red,
            ),
        ),
        Expanded(
          flex: 2,
          child: Container(
              color: Colors.orange,
            ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.yellow,
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.green,
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.blue,
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.indigo,
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.purple,
          ),
        ),
      ],
    );
  }
}