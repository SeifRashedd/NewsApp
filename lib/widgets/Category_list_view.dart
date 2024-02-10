// ignore: file_names
import 'package:flutter/widgets.dart';
import 'package:news_app_ui_setup/models/category_model.dart';
import 'package:news_app_ui_setup/widgets/category_card.dart';

class CategoryListView extends StatelessWidget {
   CategoryListView({super.key,});
   
   final List<CategoryModel> categories=[
    CategoryModel(categotyname: 'Sports', imageasset: 'assets/Background sport.jpeg',),
    CategoryModel(categotyname: 'Business', imageasset: 'assets/bg business.jpeg'),
    CategoryModel(categotyname: 'Technology', imageasset: 'assets/bg teac.jpeg'),
    CategoryModel(categotyname: 'Entertainment', imageasset: 'assets/bg entertaiment.jpeg'),
    CategoryModel(categotyname: 'Health', imageasset: 'assets/bg health.jpeg'),
    CategoryModel(categotyname: 'Science', imageasset: 'assets/bg scince.jpeg'),
    CategoryModel(categotyname: 'General', imageasset: 'assets/BackgroundGeneral.jpeg'),


   ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
       
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context,index)
        {
          return Categorycard(
            category: categories[index],
          );
        }
        
        ),
    );
  }
}
