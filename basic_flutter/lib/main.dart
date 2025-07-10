import 'package:flutter/material.dart';

///Scaffold
///Scaffold adalah widget yang digunakan untuk membuat tampilan dasar material design pada aplikasi Flutter
///Scaffold default terdiri dari;
///1. AppBar
///2. Body,
///3. FloatingActionButton

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
        home: const FirstScreen(), //
    );
  }
}
class FirstScreen extends StatelessWidget{
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO: implement build
    return Scaffold();
  }
}