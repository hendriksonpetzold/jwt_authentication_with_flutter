import 'package:dio/dio.dart';

class AuthRepository {
  Dio dio = Dio();

  Future<String> auth(String email, String password) async {
    final response = await dio.post(
      'http://127.0.0.1:8000/api/login',
      data: {
        'email': email,
        'password': password,
      },
    );
    final String accessToken = response.data['access_token'];
    return accessToken;
  }
}
