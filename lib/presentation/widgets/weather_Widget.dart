import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/bussiness_logic/cubit/weather_cubit.dart';
import 'package:news/data/web_services/weather_service.dart';
import 'package:news/presentation/widgets/weather_list.dart';

import '../../constants/strings.dart';

class WeatherWidget extends StatelessWidget {
  const WeatherWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(0, 57, 116, 0.3),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: TextStyle(
                  color: Color.fromRGBO(0, 57, 116, 0.6),
                ),
                fillColor: Color.fromRGBO(0, 57, 116, 100),
                prefixIcon: Icon(
                  Icons.search, color: Color.fromRGBO(0, 57, 116,
                    0.6),),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
              ),

            ),
          ),
          const SizedBox(height: 10,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromRGBO(0, 57, 116, 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: () {
              city = searchController.text;
              context.read<WeatherCubit>().getWeather();
            },
            child: Text('Track', style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),),
          ),
          const SizedBox(height: 20,),
          BlocBuilder<WeatherCubit, WeatherState>(
            builder: (context, state) {
              if(state is WeatherInitial){
                return CircularProgressIndicator();}
              else if(state is WeatherIsLoading){
                return CircularProgressIndicator();
              }else if(state is WeatherLoaded){
                return Expanded(child: WeatherList(weatherList: state.weatherList,));
              }else if(state is WeatherError){return Text('Error');}
              return Text('error');
            },
          ),

        ],

      ),
    );
  }
}

