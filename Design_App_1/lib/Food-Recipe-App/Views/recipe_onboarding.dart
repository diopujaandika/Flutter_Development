import 'package:flutter/material.dart';

class RecipeOnBoardingScreen extends StatefulWidget{
  const RecipeOnBoardingScreen({super.key});

  @override
  State<RecipeOnBoardingScreen> createState() => _RecipeOnBoardingScreenState();
}

class _RecipeOnBoardingScreenState extends State<RecipeOnBoardingScreen>{
  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: size.height * 0.760,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.grey.shade400,
                    Colors.grey.shade200,
                    Colors.white,
                  ],
              ),
                image: const DecorationImage(
                  image: AssetImage("assets/food-recipe/background 1.png"),
                  fit: BoxFit.cover,
                ),
            ),
          ),
          SizedBox(height: 20),
          Container(
              height: size.height*0.325,
              width: size.width,
              color: Colors.white,
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                  Text(
                    "Let's cook your own food and adjust your diet!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      height: 1.3,
                    ),
                  ),
                  ],
                ),
              ),
          ),
        ],
      ),
    );
  }
}