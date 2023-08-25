class Forcastfive {
  final String? datetime;
  final int? temp;

  Forcastfive({this.datetime, this.temp});

  factory Forcastfive.fromJson(dynamic json) {
    if (json == null) {
      return Forcastfive();
    }

    var f = json['dt_txt'].split(' ')[0].split('-')[2];
    var l = json['dt_txt'].split(' ')[1].split(':')[0];
    var fandl = '$f-$l';
    return Forcastfive(
      datetime: '$fandl',
      temp: (double.parse(json['main']['temp'].toString()) - 273.15).round(),
    );
  }
}
