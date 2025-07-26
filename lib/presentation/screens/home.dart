import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/bussiness_logic/cubit/category_cubit.dart';
import 'package:news/presentation/widgets/news_list_builder.dart';
import '../../data/web_services/news_service.dart';
import '../widgets/category_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Ready', style: TextStyle(
              color: Colors.black,
              fontSize: 28,
            ),),
            Text('News', style: TextStyle(
              color: Colors.orange,
              fontSize: 28,
            ),),
          ],
        ),
        actions: [
          IconButton(onPressed: () {

          }, icon: Icon(Icons.sunny)),
        ],
      ),
      body: BlocProvider(
        create: (context) => CategoryCubit(NewsService())..getNews(),
        child: Column(

          children: [
            CategoryList(),
            NewsListBuilder(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home',),
        BottomNavigationBarItem(
            icon: Icon(Icons.sunny_snowing), label: 'Weather'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),

      ]),
    );
  }
}


