import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  final Dio dio;
  final String baseUrl = "https://api.weatherapi.com/v1";
  final String apiKey = "d4872be5bf6f40c3891215247240504";

  WeatherService(this.dio);

  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    Response responce =
        await dio.get("$baseUrl/forecast.json?key$apiKey=&q=$cityName&days=1");
    WeatherModel weatherModel = WeatherModel.fromJson(responce.data);
    return weatherModel;
  }
}
