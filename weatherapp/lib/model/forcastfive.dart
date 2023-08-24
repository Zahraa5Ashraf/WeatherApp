class Forcastfive{
  String? datetime;
  int? temp;

  Forcastfive({ this.datetime,  this.temp});

  Map<String, dynamic> toJson() {
    return {
      "datetime": this.datetime,
      "temp": this.temp,
    };
  }

  factory Forcastfive.fromJson(Map<String, dynamic> json) {
    return Forcastfive(
      datetime: json["datetime"],
      temp: int.parse(json["temp"]),
    );
  }
//
}