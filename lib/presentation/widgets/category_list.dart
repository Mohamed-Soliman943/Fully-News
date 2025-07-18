import 'package:flutter/material.dart';
import 'category_element.dart';
import 'package:news/data/models/category_model.dart';


List<CategoryModel> categoryList=[
  CategoryModel(imageColor: Colors.deepOrangeAccent, categoryName: 'All'),
  CategoryModel(imageColor: Colors.lightBlue, categoryName: 'General'),
  CategoryModel(imageColor: Colors.green, categoryName: 'Sports'),
  CategoryModel(imageColor: Colors.red, categoryName: 'Business'),
  CategoryModel(imageColor: Colors.yellow, categoryName: 'Entertainment'),
  CategoryModel(imageColor: Colors.purple, categoryName: 'Technology'),
  CategoryModel(imageColor: Colors.pink, categoryName: 'Health'),
  CategoryModel(imageColor: Colors.grey, categoryName: 'Science'),
];


class CategoryList extends StatelessWidget {
  const CategoryList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoryList.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context,index) {
          return CategoryElement(categoryModel: categoryList[index],);
        },

      ),
    );
  }
}
