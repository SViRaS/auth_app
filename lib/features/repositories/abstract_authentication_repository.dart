abstract class AbstractAuthenticationRepository {
  Future<bool> auth(String email, password);
}