import 'package:flutter/material.dart';
import 'package:weather_application/widgets/no_weather_data.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const NoWeatherData();
  }
}
