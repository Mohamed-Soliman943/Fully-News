import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:news/constants/strings.dart';
import 'package:news/data/web_services/weather_service.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  final WeatherService weatherService= WeatherService();
  WeatherCubit(WeatherService weatherService) : super(WeatherInitial());
  Future<void> getWeather() async{
    emit(WeatherInitial());
    try{
      emit(WeatherIsLoading());
      final weatherList = await weatherService.getWeather(city);
      emit(WeatherLoaded(weatherList??[]));
    }catch(e){
      emit(WeatherError());
    }
  }
}
