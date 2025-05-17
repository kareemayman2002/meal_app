import 'package:flutter/material.dart';
import 'package:instant3/routes.dart';
class MealItem extends StatelessWidget {
  const MealItem({super.key, required this.image, required this.name, required this.id});
  final String image ;
  final String name ;
  final String id ;

  @override
  Widget build(BuildContext context) {
    return           Container(
      margin: EdgeInsets.all(20),
      width:double.infinity,
      height: 160,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            width: 130,
            height: 160,
            image,fit: BoxFit.fill,),
          Expanded(child: Text(
            textAlign: TextAlign.center ,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            name,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),)),
          IconButton(onPressed: (){
            Navigator.pushNamed(context,AppRoutes.mealDetails,
            arguments: id
            );
          }, icon: Icon(Icons.arrow_forward,color: Colors.white,)),
        ],
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(60),
          ),
          color: Colors.teal
      ),
    );
  }
}
