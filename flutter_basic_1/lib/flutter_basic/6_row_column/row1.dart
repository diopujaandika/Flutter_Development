import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Flutter App', //Judul Aplikasi
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      darkTheme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget{
  const HomePage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        leading: IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
        ),
        title: Text(
          'Flutter App',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: <Widget>[
          IconButton(
              onPressed: (){},
              icon: Icon(
                Icons.notifications
              ),
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.person,
            ),
          ),
        ],
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text('Row Expended'),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  width: 300,
                  height: 180,
                  margin: const EdgeInsets.all(40),
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      border: Border.all(color: Colors.white54),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    'Flutter',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: 300,
                  height: 180,
                  margin: const EdgeInsets.all(40),
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      border: Border.all(color: Colors.white54),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    'Flutter',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: 300,
                  height: 180,
                  margin: const EdgeInsets.all(40),
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      border: Border.all(color: Colors.white54),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    'Flutter',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}