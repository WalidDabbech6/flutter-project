import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:marketplace_client_app/core/usecases/usecase.dart';
import '../repositories/authenticate_user_repository.dart';

class AuthenticateUser implements UseCase<void, AuthenticateUserParams> {
  AuthenticateUserRepository repository;

  AuthenticateUser({required this.repository});

  @override
  Future<void> call(AuthenticateUserParams params) {
    return repository.authenticateUser(
      params.email,
      params.password,
      params.apiStream,
    );
  }
}

class AuthenticateUserParams extends Equatable {
  final String email;
  final String password;
  final StreamController apiStream;

  const AuthenticateUserParams({
    required this.email,
    required this.password,
    required this.apiStream,
  });

  @override
  List<Object?> get props => [email, password];
}
