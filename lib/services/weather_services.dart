import 'package:http/http.dart' as http;
import 'package:myapp/models/weather_model.dart';
import 'dart:convert';

class WeatherServices {
  final String apiKey = '363be93f4055c0a1a084776a4181bc24';

  Future<Weather> featchWeather(String cityName) async {
    final url = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=$apiKey');

    final response = await http.get(url);

    if (response.statusCode == 200) {
      return Weather.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load Weather data');
    }
  }
}
