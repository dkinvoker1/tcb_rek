import 'package:dio/dio.dart';

import 'interceptor.dart';

class DioConfiguration {
  Dio getDio() {
    return Dio(BaseOptions(connectTimeout: const Duration(seconds: 10)))
      ..interceptors.add(ErrorDisplayInterceptor());
  }
}
