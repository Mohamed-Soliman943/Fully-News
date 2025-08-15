import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/bussiness_logic/cubit/category_cubit.dart';
import 'package:news/constants/strings.dart';
import 'package:news/presentation/widgets/news_list_builder.dart';
import '../../bussiness_logic/cubit/weather_cubit.dart';
import '../../data/web_services/news_service.dart';
import '../../data/web_services/weather_service.dart';
import '../widgets/category_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Ready', style: TextStyle(
              color: Colors.black,
              fontSize: 28,
            ),),
            Text('News', style: TextStyle(
              color: Colors.orange,
              fontSize: 28,
            ),),
          ],
        ),
        actions: [
          IconButton(onPressed: () {

          }, icon: Icon(Icons.sunny)),
        ],
      ),
      body: MultiBlocProvider(providers: [
        BlocProvider(create: (context) => CategoryCubit(NewsService())..getNews(),),
        BlocProvider(create: (context) =>  WeatherCubit(WeatherService())..getWeather(), ),

      ],
      child: navigationWidgets[selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (value){
            setState(() {
              selectedIndex =value;
            });
          },
          items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home',),
        BottomNavigationBarItem(
            icon: Icon(Icons.sunny_snowing), label: 'Weather'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),

      ]),
    );
  }
}



