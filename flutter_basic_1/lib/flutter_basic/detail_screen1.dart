import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget{
  const DetailScreen ({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset('images/farm-house.jpg'),
              Container(),
            ],
          ),
      ),
    );
  }
}