import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/article_model.dart';


class Newstile extends StatelessWidget {
  const Newstile({super.key, required this.articleModel});

  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(11),
          child: articleModel.image == null ? Image.asset('assets/nullimage.jpg'):Image.network(articleModel.image!,
          height: 200,
          width: double.infinity,
          fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
         Text(articleModel.title!,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.w500
        ),
        ),
        const SizedBox(
          height: 8,
        ),
         Text(articleModel.subtitle??'',
        maxLines: 2,
        style: const TextStyle(
          color: Colors.grey,
          fontSize: 14
        ),
        )
      ],
    );
  }
}