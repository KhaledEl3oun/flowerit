import 'package:dio/dio.dart';

class DioHelper {
  static late Dio dio;
  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://food-api-omega.vercel.app/api/v1/user/'
      )
    );
  }
}
