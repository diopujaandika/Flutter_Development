import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{
  const MyApp ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  ElevatedButton(
                      onPressed: (){},
                      child: const Text(
                        "Tombol",
                      ),
                  ),
                  TextButton(
                      onPressed: (){},
                      child: const Text('Text Button')
                  ),
                  
                ],
              )
            ],
          )
      ),
      floatingActionButton: IconButton(
          onPressed: (){},
          icon: Icon(
            Icons.plus_one,
          ),
      ) ,
    );
  }
}