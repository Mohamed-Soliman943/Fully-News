class WeatherModel{
  final String date;
  final String maxtemp_c;
  final String mintemp_c;
  final String avgtemp_c;
  final String text;
  final String icon;

  WeatherModel({required this.date, required this.maxtemp_c, required this.mintemp_c, required this.avgtemp_c, required this.text, required this.icon});
  factory WeatherModel.fromJson(json){
    return WeatherModel(
        date: json['date'],
        maxtemp_c: json['maxtemp_c'],
        mintemp_c: json['mintemp_c'],
        avgtemp_c: json['avgtemp_c'],
        text: json['text'],
        icon: json['icon']);
  }
}