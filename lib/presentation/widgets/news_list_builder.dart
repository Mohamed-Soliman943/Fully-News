import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/bussiness_logic/cubit/category_cubit.dart';
import 'package:news/constants/strings.dart';

import '../../data/models/news_model.dart';
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
    return BlocBuilder<CategoryCubit, CategoryState>(

      builder: (context, state)  {
        print("-----------------------------------------");
        print(state.runtimeType);
        print("-----------------------------------------");
        if(state is CategoryLoaded){return CardsList(newsList: state.newsList,);}
        else if(state is CategoryFailed){return Text('Error');}
        else if(state is CategoryInitial){return CircularProgressIndicator();}
        else if(state is CategoryLoading){return CircularProgressIndicator();}
        return Text('shit');
        // return FutureBuilder(
        //   future:,
        //   builder: (context, snapshot) {
        //     if (snapshot.connectionState == ConnectionState.waiting) {
        //       return CircularProgressIndicator();
        //     }
        //     if (snapshot.hasError) {
        //       return Text('Error');
        //     }
        //     if (snapshot.hasData) {
        //       return CardsList(newsList: snapshot.data!);
        //     }
        //     return Text('No data');
        //   },
        // );
      },

    );
  }
}
