// ignore_for_file: file_names
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/api/news_serve.dart';
import 'package:news_app_ui_setup/models/article_model.dart';
import 'package:news_app_ui_setup/view/news_view.dart';
import 'news_tile.dart';

class ListViewNews extends StatefulWidget {
  const ListViewNews({
    super.key,
    required this.catrgory,
  });
  final String catrgory;

  @override
  State<ListViewNews> createState() => _ListViewNewsState();
}

class _ListViewNewsState extends State<ListViewNews> {
  List<ArticleModel> articles = [];
  bool isloading = true;
  @override
  void initState() {
    super.initState();
    getGnews();
  }

  Future<void> getGnews() async {
    articles = await NewsService(Dio()).getNews(
      category: widget.catrgory,
    );
    isloading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isloading
        ? const SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator()))
        : SliverList(
            delegate: SliverChildBuilderDelegate(childCount: articles.length,
                (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 22),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return NewsView(
                      articleModel: articles[index],
                    );
                  }));
                },
                child: Newstile(
                  articleModel: articles[index],
                ),
              ),
            );
          }));
  }
}
