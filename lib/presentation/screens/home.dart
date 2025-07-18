import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:news/presentation/widgets/news_list_builder.dart';
import '../widgets/category_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('News', style: TextStyle(
              color: Colors.black,
              fontSize: 28,
            ),),
            Text('App', style: TextStyle(
              color: Colors.orange,
              fontSize: 28,
            ),),
          ],
        ),
      ),
      body: Column(

        children: [
          CategoryList(),
          NewsListBuilder(),
        ],
      ),

    );
  }
}


