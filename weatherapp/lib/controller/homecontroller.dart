import 'package:get/get.dart';
import 'package:weatherapp/model/currentweather.dart';
import 'package:weatherapp/service/weatherRepo.dart';
import '../model/forcastfive.dart';

class HomeController extends GetxController {
  String? city;

  HomeController({this.city});

  CurrentWeather currentWeather = CurrentWeather();
  List<Forcastfive> fiveDaysData = [];
  List<CurrentWeather> fiveCitiesList = [];
  @override
  void onInit() {
    initState();
    getTopFiveCities();
    super.onInit();
  }

  void updateWeather() {
    initState();
  }

  void initState() {
    getCurrentWeatherData();
    getFiveDaysData();
  }

  void getCurrentWeatherData() {
    WeatherService(city: '$city').getCurrentWeatherData(
      onSuccess: (data) {
        currentWeather = data;
        update();
      },
      onError: (error) {
        print(error);
        update();
      },
    );
  }

  void getFiveDaysData() {
    WeatherService(city: '$city').getFiveThreeHourForecastData(
      onSuccess: (data) {
        fiveDaysData = data;
        update();
      },
      onError: (error) {
        print(error);
        update();
      },
    );
  }

  void getTopFiveCities() {
    List<String> cities = [
      'zagazig',
      'cairo',
      'alexandria',
      'ismailia',
      'fayoum'
    ];
    cities.forEach((c) {
      WeatherService(city: '$c').getCurrentWeatherData(onSuccess: (data) {
        fiveCitiesList.add(data);
        update();
      }, onError: (error) {
        print(error);
        update();
      });
    });
  }
}
