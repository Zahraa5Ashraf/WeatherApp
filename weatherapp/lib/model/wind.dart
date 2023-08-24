class Wind{
  double? speed, deg;

  Wind({ this.speed,  this.deg});

  Map<String, dynamic> toJson() {
    return {
      "speed": this.speed,
      "deg": this.deg,
    };
  }

  factory Wind.fromJson(Map<String, dynamic> json) {
    return Wind(
      speed: double.parse(json["speed"]),
      deg: json["deg"],
    );
  }
//
}