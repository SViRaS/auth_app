import 'package:bloc/bloc.dart';
import 'package:firebase/features/repositories/authentication.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthenticationRepository repository;
  AuthBloc(this.repository) : super(AuthInitial()) {
    on<AuthPressedEvent>((event, emit) async {
        try {
          bool isAuthenticated = await repository.auth(event.email, event.password);
          if(isAuthenticated) {
            emit(AuthenticatedState());
          } else {
            emit(UnauthenticatedState());
          }
        } catch (e) {
          emit(UnauthenticatedState());
        }
    });
  }
}
