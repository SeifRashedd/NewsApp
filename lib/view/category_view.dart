import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/List_View_News.dart';

// ignore: camel_case_types
class categoryview extends StatelessWidget {
  const categoryview({super.key, required this.category});
  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black38,
        title: const Text('Enjoy') ,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: CustomScrollView(
          slivers: [
            ListViewNews(
              catrgory: category,
            ),
          ],
        ),
      ),
      
      
    );
  }
}