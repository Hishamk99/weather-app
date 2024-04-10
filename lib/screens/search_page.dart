import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_application/cubit/get_weather_cubit/get_weather_cubit.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});
  static String id = 'SearchPage';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Enter a city name',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                onSubmitted: (value) async {
                  var getWeatherCubit =
                      BlocProvider.of<GetWeatherCubit>(context);
                  getWeatherCubit.getWeather(city: value);
                  Navigator.pop(context);
                },
                decoration: const InputDecoration(
                  labelText: 'Search',
                  suffixIcon: Icon(Icons.search),
                  hintText: 'Enter a city name',
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
