import 'package:flutter/material.dart';
import 'package:news/presentation/widgets/weather_card.dart';

class WeatherList extends StatelessWidget {
  final List<dynamic> weatherList;
  const WeatherList({
    super.key, required this.weatherList,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: weatherList.length,
        itemBuilder:(context,index){
          return WeatherCard(weatherModel:weatherList[index] ,);
        }
    );
  }
}
