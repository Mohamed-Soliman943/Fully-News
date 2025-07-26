import 'package:dio/dio.dart';
import 'package:news/constants/strings.dart';
import '../models/news_model.dart';

class NewsService {
  Dio dio=Dio();


  Future<List<NewsModel>?> getNews(String category) async {
    Uri url= Uri.parse('https://newsapi.org/v2/top-headlines?category=$category&country=us&apiKey=e68c3876c1034ceca9e809a59eafb80a');
    try{
      Response response=await dio.get(url.toString());
      List<NewsModel> SavedList=[];
      if (response.statusCode==200){
          List<dynamic> newsList=response.data['articles'];
          print(newsList);

          for (var news in newsList){
              NewsModel newsModel =
              NewsModel(imgUrl: news['urlToImage'],
                  title: news['title'],
                  description: news['description']);
              SavedList.add(newsModel);
          }
      }
      return SavedList;
    }catch(error){
      print(error.toString());
    }
  }
}