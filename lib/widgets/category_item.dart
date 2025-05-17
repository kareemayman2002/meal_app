import 'package:flutter/material.dart';
import 'package:instant3/model/category.dart';
import 'package:instant3/routes.dart';
class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key,required this.category});
   final Category category;
  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.all(13.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30) ,
        child: GestureDetector(
          onTap:(){
            Navigator.pushNamed(context, AppRoutes.mealScreen,arguments: {
              "id":category.id,
               "name":category.name
            });
          } ,
          child: Container(
            alignment: Alignment.bottomCenter,
            width: double.infinity,
            height: 200,
            child: Container(
              height: 40,
              width: double.infinity ,
              color: Colors.black54,
              alignment: Alignment.bottomCenter,
              child: Text("${category.name}",style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("${category.image}"), fit: BoxFit.fill),
            ),
          ),
        ),
      ),
    );
  }
}
