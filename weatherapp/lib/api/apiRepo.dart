import 'package:dio/dio.dart';

class ApiRepo {
  final String? url;
  final Map<String, dynamic>? payload;

  ApiRepo({this.url, this.payload});

  Dio _dio = Dio();

  void getData({
    Function()? beforeSend,
    Function(dynamic data)? onSuccess,
    Function(dynamic error)? onError,
  }) {
    _dio.get(url!, queryParameters: this.payload).then((response) {
      if (onSuccess != null) {
        onSuccess(response.data);
      }
    }).catchError((error) {
      if (onError != null) {
        onError(error);
      }
    });
  }
}
