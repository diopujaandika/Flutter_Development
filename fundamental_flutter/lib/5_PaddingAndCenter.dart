import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Padding App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PaddingApp(),
    );
  }
}

class PaddingApp extends StatelessWidget{
  const PaddingApp({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: const Text('Ini Padding!'),
        ),
      ),
    );
  }
}