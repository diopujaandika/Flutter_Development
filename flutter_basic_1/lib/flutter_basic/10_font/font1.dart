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
        fontFamily: 'Oswald',
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

      //Menu Samping (Drawer)
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.blue, Colors.lightBlueAccent]
                ),
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: (){
                Navigator.pop(context); //Tutup Drawer
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Setting'),
              onTap: () {},
            )
          ],
        ),
      ),

      //Konten Utama
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF2196F3), Color(0xFF21CBF3)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.flutter_dash,
                  size: 80,
                  color: Colors.blue,
                ),
                const SizedBox(height: 16),
                const Text(
                  "Hello, Dio Puja Andika!",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Oswald',
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  "Welcome to Flutter complete UI Catalog",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Oswald',
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton.icon(
                  onPressed: (){},
                  icon: const Icon(Icons.arrow_forward),
                  label: const Text("Get Started!"),
                ),
              ],
            ),
          ),
        ),
      ),
      // Navigasi bawah
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index; // Update halaman
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}