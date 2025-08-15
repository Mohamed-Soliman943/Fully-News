import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bussiness_logic/cubit/category_cubit.dart';
import '../../data/web_services/news_service.dart';
import 'category_list.dart';
import 'news_list_builder.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        CategoryList(),
        NewsListBuilder(),
      ],
    );
  }
}
