class MainWeather {
  final double? temp;
  final double? feelsLike;
  final double? temp_min;
  final double? temp_max;
  final int? pressure;
  final int? humidity;

  MainWeather(
      {this.temp,
      this.feelsLike,
      this.temp_min,
      this.temp_max,
      this.pressure,
      this.humidity});

  factory MainWeather.fromJson(dynamic json) {
    if (json == null) {
      return MainWeather();
    }

    return MainWeather(
      temp: json['temp'],
      feelsLike: double.parse(json['feels_like'].toString()),
      temp_min: json['temp_min'],
      temp_max: json['temp_max'],
      pressure: json['pressure'],
      humidity: json['humidity'],
    );
  }
}
