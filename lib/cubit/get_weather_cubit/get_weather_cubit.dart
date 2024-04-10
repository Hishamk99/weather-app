import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_application/cubit/get_weather_cubit/get_weather_state.dart';
import 'package:weather_application/models/weather_model.dart';
import 'package:weather_application/services/weather_service.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit() : super(NoWeatherState());
  WeatherModel? weatherModel;
  getWeather({required String city}) async {
    try {
      weatherModel =
          await WeatherService(Dio()).getCurrentWeather(cityName: city);
      emit(WeatherLoadedState(weatherModel: weatherModel!));
      return weatherModel;
    } catch (e) {
      emit(WeatherFailureState());
    }
  }
}
