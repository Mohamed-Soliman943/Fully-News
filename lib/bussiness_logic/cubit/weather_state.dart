part of 'weather_cubit.dart';

@immutable
sealed class WeatherState {}

final class WeatherInitial extends WeatherState {}
final class WeatherIsLoading extends WeatherState {}
final class WeatherLoaded extends WeatherState {
  final List<dynamic> weatherList;
  WeatherLoaded(this.weatherList);

}
final class WeatherError extends WeatherState {}

