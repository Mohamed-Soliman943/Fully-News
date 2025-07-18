import 'package:flutter/foundation.dart';

class  NewsModel {
  final String? imgUrl;
  final String title;
  final String? description;

  NewsModel(
      {required this.imgUrl, required this.title, required this.description});


  factory NewsModel.fromJson(json){
    return NewsModel(
        imgUrl: json['urlToImage'],
        title: json['title'],
        description: json['description']);
  }
}