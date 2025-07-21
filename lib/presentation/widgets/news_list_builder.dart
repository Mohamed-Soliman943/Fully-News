import 'package:flutter/material.dart';
import 'package:news/constants/strings.dart';

import '../../data/web_services/news_service.dart';
import 'cards_list.dart';

class NewsListBuilder extends StatefulWidget {
  const NewsListBuilder({super.key});

  @override
  State<NewsListBuilder> createState() => _NewsListBuilderState();
}

class _NewsListBuilderState extends State<NewsListBuilder> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = NewsService().getNews(category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: future,
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
        },
    );
  }
}
