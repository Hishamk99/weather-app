import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_application/cubit/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_application/screens/search_page.dart';
import 'screens/home_page.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          SearchPage.id: (context) => const SearchPage(),
          HomePage.id: (context) => const HomePage(),
        },
        initialRoute: HomePage.id,
      ),
    );
  }
}
