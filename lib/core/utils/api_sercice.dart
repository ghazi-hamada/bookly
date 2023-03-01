import 'package:dio/dio.dart';

class ApiSercice {
  final _baseUrl = "https://www.googleapis.com/books/v1/";
  final Dio dio;
  ApiSercice(this.dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await dio.get("$_baseUrl$endPoint");
    return response.data;
  }
}
