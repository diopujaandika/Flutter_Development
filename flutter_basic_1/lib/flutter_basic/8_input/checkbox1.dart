import 'package:flutter/material.dart';
import 'package:flutter_basic_1/flutter_basic/4_scaffold/scaffold1.dart';

class MyApp extends StatelessWidget{
  const MyApp ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Flutter Demo',
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatefulWidget{
  const FirstScreen ({Key? key}) : super (key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen>{
  bool agree = false;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){},
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
        ),
        title: Text('Flutter App'),
      ),
      body: SafeArea(
          child: ListTile(
            leading: Checkbox(
                value: agree,
                onChanged: (bool? value){
                  setState(() {
                    agree = value!;
                  });
                }
            ),
            title: Text('Agree/Disagree'),
          ),
      ),
    );
  }
}