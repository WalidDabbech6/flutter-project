import 'dart:async';

abstract class AuthenticateUserRepository {
  Future<void> authenticateUser(
    String email,
    String password,
    StreamController stream,
  );
}
