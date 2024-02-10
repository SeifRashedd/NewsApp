import 'package:dio/dio.dart';
import 'package:news_app_ui_setup/models/article_model.dart';


class NewsService
{
   final Dio dio;

   NewsService(this.dio);


  
  Future<List<ArticleModel>> getNews({required String category}) async
  {
    
  
  var response = await dio.get(
    'https://newsapi.org/v2/top-headlines?country=us&apiKey=6e35b7b6c78b499f9e08f1989c4aa22c&category=$category');
  
  // ignore: unused_local_variable
  Map<String, dynamic> jsonData = response.data;
  
  
  
   List<dynamic> articles = jsonData['articles'];
  
  List<ArticleModel> articleslist =[];
  
  
  for (var article in articles ) 
  {
    ArticleModel articlemodel = ArticleModel(
      image: article['urlToImage'],
      title: article['title'],
      subtitle: article['description']
      );
    articleslist.add(articlemodel);
  }
   return articleslist;
}  
   
  }

