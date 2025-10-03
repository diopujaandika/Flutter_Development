import 'package:flutter/material.dart';
import 'package:flutter_basic_1/flutter_basic/4_scaffold/scaffold1.dart';

class MyApp extends StatelessWidget{
  const MyApp ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Flutter Demo',
      home: FirstScreen(),
    );
  }
}