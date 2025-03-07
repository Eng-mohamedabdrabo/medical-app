import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DioHelper {
  static late Dio dio;
  static String? token;

  static Future<void> init() async {
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://hospital.elhossiny.net/api/v1',
        receiveDataWhenStatusError: true,
      ),
    );

    SharedPreferences prefs = await SharedPreferences.getInstance();
    token = prefs.getString('token');

    if (token != null) {
      dio.options.headers['Authorization'] = 'Bearer $token';
      print('Loaded Token: $token');
    }
  }

  static Future<Response> postData({
    required String url,
    required dynamic data, // يقبل Map أو FormData
  }) async {
    return await dio.post(
      url,
      data: data,
      options: Options(
        headers: {
          'Content-Type': data is FormData ? 'multipart/form-data' : 'application/json',
        },
      ),
    );
  }

  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
  }) async {
    return await dio.get(url, queryParameters: query);
  }

  static Future<void> updateToken(String newToken) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', newToken);
    token = newToken;
    dio.options.headers['Authorization'] = 'Bearer $newToken';
    print('Updated Token: $newToken');
  }

  static Future<Response> deleteData({
    required String url,
    Map<String, dynamic>? query,
  }) async {
    return await dio.delete(url, queryParameters: query);
  }
}
