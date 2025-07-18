import 'package:flutter/material.dart';
import 'package:news/data/web_services/news_service.dart';

import 'cards_list.dart';

class NewsListBuilder extends StatelessWidget {
  const NewsListBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: NewsService().getNews(),
        builder: (context,snapshot)
        {
          if (snapshot.connectionState==ConnectionState.waiting){
            return CircularProgressIndicator();
          }
          if (snapshot.hasError){
            return Text('Error');
          }
          if (snapshot.hasData){
            return CardsList(newsList: snapshot.data!);
          }
          return Text('No data');
        });
  }
}
