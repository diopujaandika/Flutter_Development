import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{
  const MyApp ({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatefulWidget{
  const FirstScreen ({Key? key}) : super (key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen>{
  bool lightOn = false;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Switch Input'),
      ),
      body: Switch(
        value: lightOn,
        onChanged: (bool value){
          setState(() {
            lightOn = value;
          });
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(lightOn ? 'Light On' : 'Light Off'),
            duration: Duration(seconds: 1),
            )
          );
        },
      )
    );
  }
}