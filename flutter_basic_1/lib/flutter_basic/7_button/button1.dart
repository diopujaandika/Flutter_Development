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
                  OutlinedButton(
                      onPressed: (){},
                      child: const Text('Outlined Button')
                  ),
                  IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.volume_up),
                      tooltip: 'Increase volume by 10',
                  ),
                  // FirstScreen(),
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

// class FirstScreen extends StatefulWidget{
//   const FirstScreen({Key? key}) : super(key: key);
//
//   @override
//   State<FirstScreen> createState() => _FirstScreenState();
// }
//
// class _FirstScreenState extends State<FirstScreen>{
//   String? language;
//
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('First Screen'),
//       ),
//       body: DropdownButton(
//           items: const <DropdownMenuItem<String>>[
//             DropdownMenuItem<String>(
//               value: 'Dart',
//               child: Text('Dart'),
//             ),
//             DropdownMenuItem(
//               value: 'Kotlin',
//               child: Text('Kotlin')
//             ),
//             DropdownMenuItem(
//               value: 'Swift',
//               child: Text('Swift')
//             ),
//           ],
//           value: language,
//           hint: const Text('Select Language'),
//           onChanged: (String? value){
//             setState(() {
//               language = value;
//             });
//           }
//       )
//     );
//   }
// }
