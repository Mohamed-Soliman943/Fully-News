import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/bussiness_logic/cubit/category_cubit.dart';
import 'package:news/constants/strings.dart';
import 'package:news/data/models/category_model.dart';
import 'package:news/presentation/screens/home.dart';

import '../../data/web_services/news_service.dart';

class CategoryElement extends StatelessWidget {
  const CategoryElement({
    super.key, required this.categoryModel,
  });
  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        category = categoryModel.categoryName;
        context.read<CategoryCubit>().getNews();
      },
      child: Padding(
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
      ),
    );
  }
}
