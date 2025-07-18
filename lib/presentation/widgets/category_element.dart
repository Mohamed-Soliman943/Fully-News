import 'package:flutter/material.dart';
import 'package:news/data/models/category_model.dart';

class CategoryElement extends StatelessWidget {
  const CategoryElement({
    super.key, required this.categoryModel,
  });
  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(

        alignment: Alignment.center,
        decoration: BoxDecoration(
        color: categoryModel.imageColor ,

          borderRadius: BorderRadius.circular(15),

        ),
        child: Text(categoryModel.categoryName,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,

          ),
        ),
        width: 150,
      ),
    );
  }
}
