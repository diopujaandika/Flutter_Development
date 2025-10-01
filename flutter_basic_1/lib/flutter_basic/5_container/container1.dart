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
          // color: Colors.blueAccent,
          padding: const EdgeInsets.all(5),
          width: 200,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.redAccent,
            // shape: BoxShape.circle,
            border: Border.all(color: Colors.green, width: 3),
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                color: Colors.black,
                offset: Offset(3, 6),
                blurRadius: 10,
              )
            ]
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