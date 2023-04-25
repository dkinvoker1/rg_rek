import 'package:dio/dio.dart';

Dio buildDioClient() {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://fuksiarz.pl/rest/'
    ),
  );
  return dio;
}
