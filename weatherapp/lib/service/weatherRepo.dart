import 'package:weatherapp/api/apiRepo.dart';
import 'package:weatherapp/model/currentweather.dart';
import 'package:weatherapp/model/forcastfive.dart';

class WeatherService{
  //https://api.openweathermap.org/data/2.5/weather?q=cairo&appid=8feec7e62f95c0a284c64defba099419
  String? city;

  WeatherService({this.city});
  String baseUrl ="https://api.openweathermap.org/data/2.5";
  String apiKey ="appid=8feec7e62f95c0a284c64defba099419";
  void getCurrentWeatherData(
      {
        Function ()?beforeSend,
        Function (CurrentWeather currentWeather)? onSuccess,
        Function (dynamic error)? onError,
}
      ){
    final url ="$baseUrl/weather?q=$city&$apiKey";
    ApiRepo(url: url,payload: null).getData(
        beforeSend: ()=> beforeSend!(),
        onSuccess:(data)=> onSuccess!(CurrentWeather.fromJson(data)),
        onError: (error)=>onError!(error),

    );


  }
  void getFiveThreeHourForecastData(
      //https://api.openweathermap.org/data/2.5/forecast?q=cairo&appid=8feec7e62f95c0a284c64defba099419
      {
        Function ()?beforeSend,
        Function (List<Forcastfive>forcastfive )? onSuccess,
        Function (dynamic error)? onError,
}
      ){
    final url ="$baseUrl/forecast?q=$city&$apiKey";
    ApiRepo(url: url,payload: null).getData(
        beforeSend: ()=> beforeSend!(),
        onSuccess:(data)=> {onSuccess!((data['list']as List)
            ?.map((t)=>Forcastfive.fromJson(t))
            ?.toList()??
            List.empty()),
        },
        onError: (error)=>onError!(error),

    );


  }

}