import 'package:dio/dio.dart';

Dio buildDioClient() {
  final dio = Dio(
    BaseOptions(
      connectTimeout: const Duration(seconds: 1),
      baseUrl: 'https://fuksiarz.pl/rest/'
    ),
  );
  return dio;
}
