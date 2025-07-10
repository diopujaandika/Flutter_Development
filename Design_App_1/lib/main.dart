import 'package:design_app_1/Food-Recipe-App/Views/recipe_onboarding.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  //Root widget of the app
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RecipeOnBoardingScreen(),
    );
  }
}

