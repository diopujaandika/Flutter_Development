// ///StatelessWidget
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const Scaffold(
//         body: Center(
//           child: Heading(  //mengubah widget Text
//             text: "Hello World!",
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class Heading extends StatelessWidget{
//   final String text; //state text bersifat final
//
//   const Heading({Key? key, required this.text}) : super(key: key); //lalu state text masuk ke constructor
//
//   @override
//   Widget build(BuildContext context){
//     return Text(
//       text,
//       style: const TextStyle(
//         fontSize: 24.0,
//         fontWeight: FontWeight.bold,
//       )
//     );
//   }
// }

import 'package:flutter/material.dart';

///Statefull Widget

class ContohStateful extends StatefulWidget{
  final String parameterWidget; // ini paramter widget
  const ContohStateful ({Key? key, required this.parameterWidget}) : super(key: key);

  @override
  State<ContohStateful> createState() => _ContohStatefulState();
}

class _ContohStatefulState extends State<ContohStateful>{
  String _dataState;

  @override
  Widget build(BuildContext context){
    //isi sebuah widget
  }
}
