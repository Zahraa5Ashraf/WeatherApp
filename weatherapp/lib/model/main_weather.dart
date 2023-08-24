class MainWeather{
 /*
    "temp": 307.57,
        "feels_like": 309.31,
        "temp_min": 307.57,
        "temp_max": 307.57,
        "pressure": 1010,
        "humidity": 40
 * */

  double? temp, feels_like, temp_min, temp_max, pressure,humidity;

  MainWeather({ this.temp,  this.feels_like,  this.temp_min,  this.temp_max,
     this.pressure,  this.humidity});

  Map<String, dynamic> toJson() {
    return {
      "temp": this.temp,
      "feels_like": this.feels_like,
      "temp_min": this.temp_min,
      "temp_max": this.temp_max,
      "pressure": this.pressure,
      "humidity": this.humidity,
    };
  }

  factory MainWeather.fromJson(Map<String, dynamic> json) {
    return MainWeather(
      temp: double.parse(json["temp"]),
      feels_like: json["feels_like"],
      temp_min: json["temp_min"],
      temp_max: json["temp_max"],
      pressure: json["pressure"],
      humidity: json["humidity"],
    );
  }
//
}