import 'package:weatherapp/model/weather.dart';
import 'package:weatherapp/model/wind.dart';
import 'package:weatherapp/model/cloud.dart';
import 'package:weatherapp/model/main_weather.dart';
import 'package:weatherapp/model/sys.dart';
import 'package:weatherapp/model/coord.dart';


class CurrentWeather{

  String? base,name;
  int? visibility,dt,timezone,id,cod;
  Coord? coord;
  Cloud? clouds;
  MainWeather? main;
  Sys? sys;
  Wind? wind;
  List<Weather>? weather;


  CurrentWeather(
  {
     this.base,
     this.name,
     this.visibility,
     this.dt,
     this.timezone,
     this.id,
     this.cod,
     this.coord,
     this.clouds,
     this.main,
     this.sys,
     this.wind,
     this.weather
}
    );

  factory CurrentWeather.fromJson(Map<String, dynamic> json) {
    return CurrentWeather(
      base: json["base"],
      name: json["name"],
      visibility: int.parse(json["visibility"]),
      dt: json["dt"],
      timezone: json["timezone"],
      id: json["id"],
      cod: json["cod"],
      coord: Coord.fromJson(json["coord"]),
      clouds: Cloud.fromJson(json["clouds"]),
      main: MainWeather.fromJson(json["main"]),
      sys: Sys.fromJson(json["sys"]),
      wind: Wind.fromJson(json["wind"]),
      weather: (json["weather"] as List<dynamic>)
          .map((item) => Weather.fromJson(item))
          .toList(),
    );
  }
//
}