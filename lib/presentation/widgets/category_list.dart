import 'package:flutter/material.dart';
import 'category_element.dart';
import 'package:news/data/models/category_model.dart';


List<CategoryModel> categoryList=[
  CategoryModel(imageUrl: 'https://markdmartin.com/wp-content/uploads/2025/04/Physics-and-business.jpg',
      categoryName: 'Bussiness Model'),
  CategoryModel(imageUrl: 'https://markdmartin.com/wp-content/uploads/2025/04/Physics-and-business.jpg', categoryName: 'categoryName')
];


class CategoryList extends StatelessWidget {
  const CategoryList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
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
