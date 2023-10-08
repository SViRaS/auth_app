part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}

class AuthPressedEvent extends AuthEvent {
  final String email;
  final String password;

  AuthPressedEvent(this.email, this.password);
}