import 'package:dio/dio.dart';
import 'package:weather_application/models/weather_model.dart';

class WeatherService {
  final Dio dio;

  WeatherService(this.dio);
  final String baseUrl = 'https://api.weatherapi.com/v1';
  final String apiKey = 'bd5e38e54f9844209fa22042241004';
  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    try {
      Response response = await dio
          .get('$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1');
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errorMessage = e.response?.data['error']['message'] ??
          'there was an error ,try later'; // or if .. else
      throw Exception(errorMessage);
    } catch (e) {
      throw Exception(e);
    }
  }
}
