import 'package:flutter/material.dart';
import 'package:instant3/data.dart';
import 'package:instant3/widgets/category_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal,
        title: Text("Meals App"),
      ),
      body: ListView.builder(
          itemCount: categories.length,
          itemBuilder: (context,index){
        return CategoryItem(category:categories[index] ,);
      })
    );
  }
}
