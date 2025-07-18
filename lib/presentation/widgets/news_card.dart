import 'package:flutter/material.dart';
import 'package:news/data/models/news_model.dart';

class NewsCard extends StatelessWidget {
  NewsModel newsModel;
  NewsCard({
    super.key,required this.newsModel
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Container(
              width: double.infinity,
              child: Image.network(
                newsModel.imgUrl ?? '',
                height: 200,
                fit: BoxFit.cover,),
            ),
          ),
          Text(newsModel.title,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),),
          Text(newsModel.description ?? '',
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: TextStyle(
                fontSize: 18
            ),
          ),

        ],
      ),
    );
  }
}

