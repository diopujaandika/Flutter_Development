import 'package:flutter/material.dart';
import 'package:flutter_basic_1/flutter_basic/1_widget/widget1.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build (BuildContext context){
    return MaterialApp(
      title: 'Fluter App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget{
  const HomePage({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context){
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Row(
        children: [
          Expanded(
            child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints contraints){
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'MediaQuery : ${screenSize.width.toStringAsFixed(2)}',
                        style: const TextStyle(color: Colors.white, fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'MediaQuery : ${screenSize.width.toStringAsFixed(2)}',
                        style: const TextStyle(color: Colors.white, fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'MediaQuery : ${screenSize.width.toStringAsFixed(2)}',
                        style: const TextStyle(color: Colors.white, fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  );
                },
            ),
          ),
          Expanded(
            flex: 3,
            child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints){
                  return Container(
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'MediaQuery: ${screenSize.width.toStringAsFixed(2)}',
                          style: const TextStyle(color: Colors.blueGrey, fontSize: 18),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'LayoutBuilder: ${constraints.maxWidth}',
                          style: const TextStyle(color: Colors.blueGrey, fontSize: 18),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'MediaQuery: ${screenSize.width.toStringAsFixed(2)}',
                          style: const TextStyle(color: Colors.blueGrey, fontSize: 18),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'LayoutBuilder: ${constraints.maxWidth}',
                          style: const TextStyle(color: Colors.blueGrey, fontSize: 18),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  );
                }
            ),
          )
        ],
      )
    );
  }
}

