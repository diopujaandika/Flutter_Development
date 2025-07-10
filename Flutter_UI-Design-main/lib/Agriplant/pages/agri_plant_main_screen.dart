import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_ui_design/Agriplant/Utils/colors.dart';
import 'package:flutter_ui_design/Agriplant/pages/agriplant_home_screen.dart';
import 'package:flutter_ui_design/Agriplant/pages/services_screen.dart';

class AgriPlantMainScreen extends StatefulWidget {
  const AgriPlantMainScreen({super.key});

  @override
  State<AgriPlantMainScreen> createState() => _AgriPlantMainScreenState();
}

class _AgriPlantMainScreenState extends State<AgriPlantMainScreen> {
  final pages = [
    const AgriplantHomeScreen(),
    const ServicesScreen(),
    const Scaffold(
      body: Center(
        child: Text("Cart Page"),
      ),
    ),
    const Scaffold(
      body: Center(
        child: Text("Profile Page"),
      ),
    ),
  ];
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPageIndex],
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: mainGreenColor,
        currentIndex: currentPageIndex,
        onTap: (index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(IconlyLight.home),
            label: "Home",
            activeIcon: Icon(IconlyBold.home),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: "Services",
            activeIcon: Icon(Icons.store),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: "Cart",
            activeIcon: Icon(Icons.shopping_cart),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Profile",
            activeIcon: Icon(Icons.person),
          )
        ],
      ),
    );
  }
}
