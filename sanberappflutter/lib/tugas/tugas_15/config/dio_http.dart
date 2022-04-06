import 'package:sanberappflutter/tugas/tugas_15/config/base_url.dart';
import 'package:dio/dio.dart';

class DioHttp {
  //this is standarized request for everyone
  static Map<String, dynamic> headers = {
    "Accept": "application/json",
    "Content-Type": 'application/json',
  };

  static Dio request = Dio(BaseOptions(
    //validateStatus : (status) => status! <= 500
    baseUrl: baseUrl,
    headers: headers,
  ));
}
