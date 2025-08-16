import 'package:flutter/material.dart';

class ContainerClass extends StatelessWidget{
  const ContainerClass ({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context){
    return Column(
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
      ],
    );
  }
}