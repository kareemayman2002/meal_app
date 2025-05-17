import 'package:flutter/material.dart';
import 'package:instant3/data.dart';
import 'package:instant3/routes.dart';
import 'package:instant3/screens/home_screen.dart';
import 'package:instant3/screens/meal_details.dart';
import 'package:instant3/screens/meal_screen.dart';
main (){

  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      routes:{
        AppRoutes.mealScreen:(context) => MealScreen(),
        AppRoutes.mealDetails :(context) => MealDetails(),
      } ,

      home: HomeScreen(),
    );
  }
}
