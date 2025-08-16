import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) :super (key:key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Column App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: ColumnApp(),
    );
  }
}

class ColumnApp extends StatelessWidget{
  const ColumnApp({Key? key}) :super (key:key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
        ),
        title: Text(
          'Column App',
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(
                Icons.search,
                color: Colors.black,
              )
          )
        ],
      ),
        body: Row(
          children: [
            Column(
              children: [
                Container(width: 80, height: 80, color: Colors.red),
                Container(width: 80, height: 80, color: Colors.yellow),
                Container(width: 80, height: 80, color: Colors.green),
              ],
            ),
            Column(
              children: [
                Container(width: 80, height: 80, color: Colors.blue),
                Container(width: 80, height: 80, color: Colors.purple),
                Container(width: 80, height: 80, color: Colors.pink),
              ],
            ),
          ],
        )
    );
  }
}