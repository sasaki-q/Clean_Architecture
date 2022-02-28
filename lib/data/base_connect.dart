import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class BaseConnect {
  late Dio http;
  final BaseOptions baseOptions = BaseOptions(
    baseUrl: dotenv.env['REST_API_URL'].toString(),
    connectTimeout: 5000,
    receiveTimeout: 5000,
    headers: {
      "authorization": "clean",
    },
  );
  BaseConnect() {
    http = Dio(baseOptions);
  }
}
