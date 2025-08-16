import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Container',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ContainerScreen()
    );
  }
}

class ContainerScreen extends StatelessWidget{
  const ContainerScreen({Key? key}) :super (key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container App'),
        leading: IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: (){}),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: (){},
          ),
        ],
      ),
      body: Container(
        //color: Colors.blue,
        padding: const EdgeInsets.all(100),
        margin: const EdgeInsets.all(10),
        width: 200,
        height: 100,
        child: const Text(
          'Hello B-01 Bekup Create 2025',
          style: TextStyle(fontSize: 25),
        ),
        decoration: BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.yellow,
            width: 5,
          ),
          borderRadius: BorderRadius.circular(10),
          boxShadow: const[
            BoxShadow(
              color: Colors.black,
              offset: Offset(3, 6),
              blurRadius: 10,
            )
          ],
        ),
      )
    );
  }
}

