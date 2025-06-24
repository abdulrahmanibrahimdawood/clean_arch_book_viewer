import 'package:dio/dio.dart';

class ApiService {
  final Dio dio = Dio();
  final baseUrl = 'https://www.googleapis.com/books/v1/';

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    final response = await dio.get('$baseUrl$endPoint');
    return response.data;
  }
}
