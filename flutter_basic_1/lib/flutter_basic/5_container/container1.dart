import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget{
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: (){},
        ),
        title: Text(
          'Flutter App',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
          ),
        ),
        actions: <Widget>[
          IconButton(
              onPressed: (){},
              icon: const Icon(
                  Icons.person,
                  color: Colors.black,
              )
          )
        ],
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.redAccent,
          ),
          child: const Text(
            'Hello World',
            style: TextStyle(
              fontSize: 40
            )
          ),
        ),
      )
    );
  }
}