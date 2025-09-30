//Import library bawaan Flutter
import 'package:flutter/material.dart';

//MyApp adalah root widget dari aplikasi
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false, //Menghilangkan tulisan "DEBUG"
      title: 'Flutter Modern UI',
      theme: ThemeData(
        //Mengatur tema warna berdasarkan "seed color"
        primarySwatch: Colors.blue,
        //Aktifkan material 3 (versi design terbaru Flutter)
        useMaterial3: true,
      ),
      home: const HomePage(), //Halaman utama Aplikasi
    );
  }
}

//Halaman utama Aplikasi
class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  int _selectedIndex = 0; //Untuk Buttom NavigationBar

  //Daftar Halaman
  final List<Widget> _pages = const [
    Center(child: Text("Home Page", style: TextStyle(fontSize: 24))),
    Center(child: Text("Profile Page", style: TextStyle(fontSize: 24))),
    Center(child: Text("Settings", style: TextStyle(fontSize: 24))),
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      //Bagian atas aplikasi
      appBar: AppBar(
        title: const Text("Flutter Complate UI"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: (){},
              icon: const Icon(Icons.notifications),
          ),
          IconButton(
              onPressed: (){},
              icon: const Icon(Icons.search),
          )
        ],
      ),

      
    );
  }
}