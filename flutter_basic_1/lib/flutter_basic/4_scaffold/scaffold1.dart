import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FirstScreen()
    );
  }
}
class FirstScreen extends StatelessWidget{
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Fist Screen'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.search,
                color: Colors.black
              ),
              onPressed: (){},
            )
          ],
          leading: IconButton(
              onPressed: (){},
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              )
          ),
        ),

        body: const Center(
          child: Text('Hello World!'),
        )
      );
  }
}