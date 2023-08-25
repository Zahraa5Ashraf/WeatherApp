class Cloud {
  final int? all;

  Cloud({this.all});

  factory Cloud.fromJson(dynamic json) {
    if (json == null) {
      return Cloud();
    }

    return Cloud(
      all: json['all'],
    );
  }
}
