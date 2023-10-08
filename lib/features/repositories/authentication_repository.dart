import 'package:dio/dio.dart';
import 'package:firebase/features/repositories/abstract_authentication_repository.dart';

class AuthenticationRepository implements AbstractAuthenticationRepository {
  final Dio _dio = Dio();

  @override
  Future<bool> auth(String email, password) async {
    try {
      final response = await _dio.post(
        'http://45.10.110.181:8080/api/v1/auth/login',
        data: {
          'email': email,
          'password': password,
        },
      );

      if (response.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print(e.toString());
      return false;
    }
  }
}
   // Auth data
   // login = maripbekoff@gmail.com
   // password = adminadmin