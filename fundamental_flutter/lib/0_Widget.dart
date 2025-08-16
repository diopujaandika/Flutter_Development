import 'package:flutter/material.dart';

class WidgetApp extends StatelessWidget{
  const WidgetApp({Key? key}) :super (key: key);

  Widget build(BuildContext context){
    return Center(
      child: TextButton(
        onPressed: (){
          print("Tombol Diklik!");
        },
        style: TextButton.styleFrom(
          foregroundColor:Colors.white,
          backgroundColor: Colors.deepPurpleAccent,
          padding: EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 12,
          ),
          elevation: 50,
        ),
        child: Text(
          "Klik Aku",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2
          ),
        ),
      ),
    );
  }
}