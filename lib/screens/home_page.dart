import 'package:flutter/material.dart';
import 'package:weather_application/widgets/weather_data.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = 'HomePage';

  @override
  Widget build(BuildContext context) {
    return const WeatherData();
  }
}
