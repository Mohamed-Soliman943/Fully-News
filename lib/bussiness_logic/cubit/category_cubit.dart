import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../constants/strings.dart';
import '../../data/web_services/news_service.dart';

part 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit(NewsService newsService) : super(CategoryInitial());
  final NewsService newsService = NewsService();
  Future<void> getNews() async {
  emit(CategoryInitial());
    try{
      final newsList = await newsService.getNews(category);
      emit(CategoryLoaded(newsList!));
    }catch(error){
      emit(CategoryFailed());
    }
  }
}

