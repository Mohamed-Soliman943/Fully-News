
import 'package:flutter/material.dart';
import 'package:news/presentation/widgets/settings_widget.dart';
import 'package:news/presentation/widgets/weather_Widget.dart';

import '../presentation/widgets/home_widget.dart';

const String apiKey = "e68c3876c1034ceca9e809a59eafb80a";
const String baseUrl ="https://newsapi.org/v2";
String category= 'general' ;
late Future<dynamic> future;
Color textLight = Colors.black;
Color textDark = Colors.white;
Color backgroundLight = Colors.white;
Color backgroundDark = Colors.black54;
var city='London';
int selectedIndex = 0;
dynamic searchController = new TextEditingController();
List<Widget> navigationWidgets =[
  HomeWidget(),
  WeatherWidget(),
  SettingsWidget(),
];

