class Cloud{
  int? all;

  Cloud({ this.all});

  factory Cloud.fromJson(Map<String, dynamic> json) {
    return Cloud(
      all: int.parse(json["all"]),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "all": this.all,
    };
  }

//
}