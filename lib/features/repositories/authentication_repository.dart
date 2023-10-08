import 'package:firebase/features/repositories/abstract_authentication_repository.dart';
import 'package:http/http.dart' as http;

 class AuthenticationRepository implements AbstractAuthenticationRepository{
  
  @override
   Future<bool> auth(String email, password) async {
    try {
      final response = await http.post(
        Uri.parse('http://45.10.110.181:8080/api/v1/auth/login'),
        body: {
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