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
      padding: const EdgeInsets.all(8.0),
      child: Container(

        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(categoryModel.imageUrl,
            ),
          fit: BoxFit.fill
          ),

          borderRadius: BorderRadius.circular(15),

        ),
        child: Text(categoryModel.categoryName,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,

          ),
        ),
        width: 230,
        height: 150,
      ),
    );
  }
}
