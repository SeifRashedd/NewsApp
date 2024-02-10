import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/category_model.dart';
import 'package:news_app_ui_setup/view/category_view.dart';

class Categorycard extends StatelessWidget {
  const Categorycard({super.key,required this.category,});

  final CategoryModel category;
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return categoryview(
                category: category.categotyname,
              );
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 17),
        child: Container(
            height: 100,
            width: 180,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image:AssetImage(category.imageasset)   ),
              
              borderRadius: BorderRadius.circular(12)),
            child: Center(
            child:  Text(category.categotyname,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 25),
              )
              ),
        
        ),
      ),
    );
  }
}