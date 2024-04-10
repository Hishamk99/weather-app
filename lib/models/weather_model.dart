class WeatherModel {
  final String cityame;
  final String image;
  final DateTime time;
  final double temp;
  final String condition;
  final int humidity;
  final double wind;
  final int snow;

  WeatherModel({
    required this.cityame,
    required this.image,
    required this.time,
    required this.temp,
    required this.condition,
    required this.humidity,
    required this.wind,
    required this.snow,
  });
  factory WeatherModel.fromJson(jsonData) {
    return WeatherModel(
      cityame: jsonData['location']['name'],
      image: jsonData['forecast']['forecastday'][0]['day']['condition']['icon'],
      time: DateTime.parse(jsonData['current']['last_updated']),
      temp: jsonData['forecast']['forecastday'][0]['day']['avgtemp_c'],
      condition: jsonData['forecast']['forecastday'][0]['day']['condition']
          ['text'],
      humidity: jsonData['forecast']['forecastday'][0]['day']['avghumidity'],
      wind: jsonData['current']['wind_mph'],
      snow: jsonData['forecast']['forecastday'][0]['day']
          ['daily_chance_of_snow'],
    );
  }
}
