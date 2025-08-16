import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'RowApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const RowWidget(),
    );
  }
}

class RowWidget extends StatelessWidget{
  const RowWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: const Text(
              'Row Widget'
          ),
          leading: IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: (){},
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              ),
              onPressed: (){},
            ),
            IconButton(
              icon: const Icon(
                Icons.favorite,
                color: Colors.black,
              ),
              onPressed: (){},
            )
          ],
        ),
        body: Column(
          children: [
            Text(
              'MainAxisAlignment.spaceEvenly',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                Container(width: 80, height: 80, color: Colors.red),
                Container(width: 80, height: 80, color: Colors.green),
                Container(width: 80, height: 80, color: Colors.blue),
              ],
            ),
            Text(
              'MainAxisAlignment.spaceAround',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(width: 80, height: 80, color: Colors.red,),
                Container(width: 80, height: 80, color: Colors.green),
                Container(width: 80, height: 80, color: Colors.blue),
              ],
            ),
            Text(
              'MainAxisAlignment.spaceBatween',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(width: 80, height: 80, color: Colors.red,),
                  Container(width: 80, height: 80, color: Colors.green),
                  Container(width: 80, height: 80, color: Colors.blue),
                ]
            ),
            Text(
              'MainAxisAlignment.start',
              style: TextStyle(
                color: Colors.red,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(width: 80, height: 80, color: Colors.red,),
                Container(width: 80, height: 80, color: Colors.green),
                Container(width: 80, height: 80, color: Colors.blue),
              ],
            ),
            Text(
              'MainAxisAlignment.center',
              style: TextStyle(
                color: Colors.red,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(width: 80, height: 80, color: Colors.red,),
                Container(width: 80, height: 80, color: Colors.green),
                Container(width: 80, height: 80, color: Colors.blue),
              ],
            ),
            Text(
              'MainAxisAlignment.end',
              style: TextStyle(
                color: Colors.red,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(width: 80, height: 80, color: Colors.red,),
                Container(width: 80, height: 80, color: Colors.green),
                Container(width: 80, height: 80, color: Colors.blue),
              ],
            )
          ],
        )
    );
  }
}