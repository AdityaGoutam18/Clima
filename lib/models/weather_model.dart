class Weather {
  final String cityName;
  final String description;
  final int humidity;
  final int sunrise;
  final int sunset;
  final double temperature;
  final double windSpeed;

  // Constructor
  Weather({
    required this.cityName,
    required this.description,
    required this.humidity,
    required this.sunrise,
    required this.sunset,
    required this.temperature,
    required this.windSpeed,
  });

  // Factory constructor
  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      cityName: json['name'],
      description: json['weather'][0]['description'], // Access the first item in the 'weather' list
      humidity: json['main']['humidity'],
      sunrise: json['sys']['sunrise'],
      sunset: json['sys']['sunset'],
      temperature: json['main']['temp'] - 273.15, // Convert from Kelvin to Celsius
      windSpeed: json['wind']['speed'],
    );
  }
}
