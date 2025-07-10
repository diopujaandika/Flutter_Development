// ///StatelessWidget [MyApp]
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

/// Contoh Statefull Widget pada [ContohStateful] dan [_ContohStatefulState]

// import 'package:flutter/material.dart';
//
// class ContohStateful extends StatefulWidget{
//   final String parameterWidget; // ini paramter widget
//   const ContohStateful ({Key? key, required this.parameterWidget}) : super(key: key);
//
//   @override
//   State<ContohStateful> createState() => _ContohStatefulState();
// }
//
// class _ContohStatefulState extends State<ContohStateful>{
//   String _dataState;
//
//   @override
//   Widget build(BuildContext context){
//     //isi sebuah widget
//   }
// }

///Contoh StatefulWidget Basic [BiggerText] dan [_BiggerTextState]

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Scaffold(
            body: Center(
              child: BiggerText(text: "Helo World!"), //Ubah widget Heading ke Perubahan Text
            )
        )
    );
  }
}

class BiggerText extends StatefulWidget{
  final String text;

  const BiggerText({Key? key, required this.text}) : super(key: key);

  @override
  State<BiggerText> createState() => _BiggerTextState();
}

class _BiggerTextState extends State<BiggerText>{
  double _textSize = 16.0;

  @override
  Widget build(BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(widget.text, style: TextStyle(fontSize: _textSize),),
        ElevatedButton(
          child: const Text("Perbesar"),
          onPressed: (){
            setState(() {
              _textSize = 32.0; //Ukuran text diubah menjadi 32
            });
          },
        )
      ],
    );
  }
}