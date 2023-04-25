import 'package:dio/dio.dart';

Dio buildDioClient() {
  final dio = Dio(
    BaseOptions(
      connectTimeout: const Duration(seconds: 3),
      baseUrl: 'https://fuksiarz.pl/rest/'
    ),
  );
  return dio;
}
