
import 'package:flutter/material.dart';
import 'package:news/data/models/news_model.dart';

import 'news_card.dart';

class CardsList extends StatelessWidget {
  List<dynamic> newsList;
  CardsList({
    super.key, required this.newsList
  });


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: newsList.length,
          itemBuilder: (context,index){
            return NewsCard(newsModel: newsList[index],);
          }
      ),
    );
  }
}
