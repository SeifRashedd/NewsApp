import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/Category_list_view.dart';
import '../widgets/List_View_News.dart';



class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation:20,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('New',
            style: TextStyle(color: Colors.black),),
            Text('News',
            style: TextStyle(color: Colors.blue),),
          ],
        ),  
      ),
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
         physics: const BouncingScrollPhysics(),
          slivers: [
                SliverToBoxAdapter(child: CategoryListView()),
                const SliverToBoxAdapter(child: SizedBox(height: 32,),),
                const ListViewNews(
              catrgory: 'general',
            ),
          ],
        ),
      )
    );
  }
}





