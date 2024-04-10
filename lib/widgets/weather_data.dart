import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weather_application/screens/search_page.dart';

class WeatherData extends StatelessWidget {
  const WeatherData({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Weather App'),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, SearchPage.id);
              },
              icon: const Icon(Icons.search),
            )
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://cdn.weatherapi.com/weather/64x64/night/176.png',
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Updated at 12:45',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              '40',
              style: TextStyle(fontSize: 80),
            ),
            const Text(
              'london',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(
                      FontAwesomeIcons.snowflake,
                    ),
                    Text('15%')
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      FontAwesomeIcons.droplet,
                    ),
                    Text('76%')
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      FontAwesomeIcons.wind,
                    ),
                    Text('4mph')
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Clear',
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
