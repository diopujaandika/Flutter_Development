import 'package:flutter/material.dart';

import 'navigation2.dart';

class MyApp extends StatelessWidget{
  const MyApp ({Key? key}) :super(key:  key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Pindah Screen'),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return const SecondScreen();
            }));
          },
        ),
      ),
    );
  }
}
