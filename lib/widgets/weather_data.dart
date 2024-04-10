import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weather_application/models/weather_model.dart';
import 'package:weather_application/screens/search_page.dart';

class WeatherData extends StatelessWidget {
  const WeatherData({super.key, required this.weatherModel});
  final WeatherModel weatherModel;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: getThemeColor(weatherModel.condition),
          title: const Text(
            'Weather App',
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, SearchPage.id);
              },
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                getThemeColor(weatherModel.condition),
                getThemeColor(weatherModel.condition)[300]!,
                getThemeColor(weatherModel.condition)[50]!,
              ])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https:${weatherModel.image}',
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Updated at ${weatherModel.time.hour}:${weatherModel.time.minute}',
                style: const TextStyle(fontSize: 24),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                weatherModel.temp.round().toString(),
                style: const TextStyle(fontSize: 80),
              ),
              Text(
                weatherModel.cityame,
                style: const TextStyle(
                  fontSize: 24,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Icon(
                        FontAwesomeIcons.snowflake,
                      ),
                      Text('${weatherModel.snow}%')
                    ],
                  ),
                  Column(
                    children: [
                      const Icon(
                        FontAwesomeIcons.droplet,
                      ),
                      Text('${weatherModel.humidity}%')
                    ],
                  ),
                  Column(
                    children: [
                      const Icon(
                        FontAwesomeIcons.wind,
                      ),
                      Text('${weatherModel.wind}mph')
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                weatherModel.condition,
                style: const TextStyle(fontSize: 30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

MaterialColor getThemeColor(String? condition) {
  if (condition == null) {
    return Colors.blue;
  }
  switch (condition) {
    case 'Sunny':
    case 'Clear':
      return Colors.orange;
    case 'Partly cloudy':
      return Colors.blue;
    case 'Cloudy':
    case 'Overcast':
    case 'Mist':
    case 'Fog':
    case 'Freezing fog':
      return Colors.grey;

    case 'Thundery outbreaks possible':
      return Colors.deepPurple;

    case 'Patchy rain possible':
    case 'Patchy snow possible':
    case 'Patchy sleet possible':
    case 'Patchy freezing drizzle possible':
    case 'Blowing snow':
    case 'Blizzard':
    case 'Patchy light drizzle':
    case 'Light drizzle':
    case 'Freezing drizzle':
    case 'Heavy freezing drizzle':
    case 'Patchy light rain':
    case 'Light rain':
    case 'Moderate rain at times':
    case 'Moderate rain':
    case 'Heavy rain at times':
    case 'Heavy rain':
    case 'Light freezing rain':
    case 'Moderate or heavy freezing rain':
    case 'Light sleet':
    case 'Moderate or heavy sleet':
    case 'Patchy light snow':
    case 'Light snow':
    case 'Patchy moderate snow':
    case 'Moderate snow':
    case 'Patchy heavy snow':
    case 'Heavy snow':
    case 'Ice pellets':
    case 'Light rain shower':
    case 'Moderate or heavy rain shower':
    case 'Torrential rain shower':
    case 'Light sleet showers':
    case 'Moderate or heavy sleet showers':
    case 'Light snow showers':
    case 'Moderate or heavy snow showers':
    case 'Light showers of ice pellets':
    case 'Moderate or heavy showers of ice pellets':
      return Colors.lightBlue;

    case 'Patchy light rain with thunder':
    case 'Moderate or heavy rain with thunder':
    case 'Patchy light snow with thunder':
    case 'Moderate or heavy snow with thunder':
      return Colors.deepPurple;
    default:
      return Colors.blue;
  }
}
