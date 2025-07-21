import 'package:flutter/material.dart';
import 'package:news/presentation/widgets/news_list_builder.dart';
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
          IconButton(onPressed: (){

          }, icon: Icon(Icons.sunny)),
        ],
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


