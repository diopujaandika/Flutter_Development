import 'package:flutter/material.dart';
import 'package:fundamental_flutter/1_StatelessWidget.dart';
import 'package:fundamental_flutter/2_StatefulWidget.dart';
import '0_Widget.dart';
import '8_Button.dart';
import '9_InputWidget.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp ({Key? key}) :super (key:key);

  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: ScreenApp(),
    );
  }
}

class ScreenApp extends StatelessWidget{
  const ScreenApp ({Key? key}) :super (key:key);

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        leading: IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
        ),
        title: Text(
          'Flutter Demo App',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: <Widget>[
          IconButton(
              onPressed: (){},
              icon: Icon(
                Icons.search,
                color: Colors.deepPurpleAccent,
              )
          ),
          IconButton(
              onPressed: (){},
              icon: Icon(
                Icons.person,
                color: Colors.white,
              )
          )
        ],
      ),
      body: ListView(
        child: Column(
          children: [
            InputTextField(),
            SwitchButton(),
            RadioButton(),
          ],
          // text: 'Hello Flutter',
        ),
      ),
    );
  }
}