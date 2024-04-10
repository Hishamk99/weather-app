import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_application/cubit/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_application/cubit/get_weather_cubit/get_weather_state.dart';
import 'package:weather_application/widgets/no_weather_data.dart';
import 'package:weather_application/widgets/weather_data.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = 'HomePage';

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetWeatherCubit, WeatherState>(
      builder: (context, state) {
        if (state is WeatherLoadedState) {
          return WeatherData(weatherModel: state.weatherModel);
        } else if (state is WeatherFailureState) {
          return const Text('There was an error');
        } else {
          return const NoWeatherData();
        }
      },
    );
  }
}
