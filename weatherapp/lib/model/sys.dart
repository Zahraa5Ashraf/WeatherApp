class Sys{
  /*
   "type": 1,
        "id": 2514,
        "country": "EG",
        "sunrise": 1692847641,
        "sunset": 1692894484
  * */
  int? type,id,sunrise,sunset;
  String? country;

  Sys({ this.type,  this.id,  this.sunrise,  this.sunset,  this.country});

  factory Sys.fromJson(Map<String, dynamic> json) {
    return Sys(
      type: int.parse(json["type"]),
      id: json["id"],
      sunrise: json["sunrise"],
      sunset: json["sunset"],
      country: json["country"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "type": this.type,
      "id": this.id,
      "sunrise": this.sunrise,
      "sunset": this.sunset,
      "country": this.country,
    };
  }

//
}