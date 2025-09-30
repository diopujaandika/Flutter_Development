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

//Halaman utama Applikasi
class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      //Scaffold adalah struktur dari halaman (AppBar, Body, FloatingButton, dll)
      body: Container(
        //Container untuk background gradient
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF2196F3), Color(0xFF21CBF3)] //Warna biru Gradient
          )
        ),
      ),
    );
  }
}