import 'package:flutter/material.dart';
import 'package:instant3/data.dart';

import '../model/meal.dart';
class MealDetails extends StatelessWidget {
  const MealDetails({super.key});

  @override
  Widget build(BuildContext context) {
    String id = ModalRoute.of(context)!.settings.arguments as String;
    Meal meal = meals.firstWhere((value){
      return value.id == id;
    });
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border_outlined))
        ],
        backgroundColor: Colors.teal,
        title: Text(meal.title),
      ),
      body: Column(
        children: [
          Image.asset(meal.imageUrl),
           Column(
             children: [
               Text(meal.description),
               Text("PRICE ${meal.salary} \$"),
               Text("TIME ${meal.time} min"),
             ],
           )
        ],
      ),
    );
  }
}
