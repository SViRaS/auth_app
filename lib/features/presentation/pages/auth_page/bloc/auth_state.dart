part of 'auth_bloc.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

// class AuthLoading extends AuthState {}

// class AuthenticationState extends AuthState {}

// class AuthSuccess extends AuthState {
//   final String email;

//   AuthSuccess(this.email);
// }

// class AuthFailure extends AuthState {
//   final String error;

//   AuthFailure(this.error);
// }

class AuthenticatedState extends AuthState {}

class UnauthenticatedState extends AuthState {}