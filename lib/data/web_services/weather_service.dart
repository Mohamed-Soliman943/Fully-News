import 'package:dio/dio.dart';
import 'package:news/data/models/weather_model.dart';

import '../../constants/strings.dart';

class WeatherService{
  final Dio dio = Dio();
  Future<List<WeatherModel>?> getWeather(String city) async{
    Uri url = Uri.parse('http://api.weatherapi.com/v1/forecast.json?key=622ca93462be43aa9dd125636240108&q=$city&days=3&aqi=no&alerts=no');
    try{
      Response response = await dio.get(url.toString());
      List<WeatherModel> savingList = [];
      if(response.statusCode == 200) {
        List<dynamic> weatherList = response.data['forecast']['forecastday'];
        for(var weather in weatherList){
          WeatherModel weatherModel = WeatherModel(
              date: weather['date'],
              maxtemp_c:weather ['day']['maxtemp_c'].toString(),
              mintemp_c: weather['day']['mintemp_c'].toString(),
              avgtemp_c:weather['day']['avgtemp_c'].toString(),
              text:weather['day']['condition']['text'],
              icon:weather['day']['condition']['icon']);
          savingList.add(weatherModel);
        }

        return savingList;
      }
      else return [];
    }catch(e){print(e.toString());}
  }
}