import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{
  const MyApp ({Key? key}) :super (key: key);

  @override
  Widget build (BuildContext context){
    return MaterialApp(
      title: 'Fultter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatefulWidget{
  const FirstScreen ({Key? key}) : super(key: key);

  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState  extends State<FirstScreen>{
  String? language;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter App',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Radio<String>(
              value: 'Dart',
              groupValue: language,
              onChanged: (String? value){
                setState((){
                  language = value;
                  showSnavkbar();
                });
              },
            )
          )
        ],
      )
    );
  }
}