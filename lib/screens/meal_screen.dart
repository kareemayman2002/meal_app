import 'package:flutter/material.dart';
import 'package:instant3/data.dart';
import 'package:instant3/widgets/meal_item.dart';

import '../model/meal.dart';
class MealScreen extends StatelessWidget {
  const MealScreen({super.key});
  @override
  Widget build(BuildContext context) {
    var data = ModalRoute.of(context)!.settings.arguments as Map<String,dynamic>;
    String id = data["id"];
    List<Meal> mealsFilter = meals.where((test){
      return test.categoryNumber == id;
    }).toList();

    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal,
        title: Text("${data["name"]}"),
      ),
      body: ListView.builder(
          itemCount:mealsFilter.length ,
          itemBuilder: (context,index){
            return MealItem(image:mealsFilter[index].imageUrl,name:mealsFilter[index].title ,id: mealsFilter[index].id ,);

      })

    );
  }
}
