import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../config.dart';
import '../../domain/auth/repositories/i_auth_repository.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthRepository authRepository;
  final Config config;

  AuthBloc({
    required this.authRepository,
    required this.config,
  }) : super(const AuthState.initial()) {
    on<AuthEvent>(_onEvent);
  }

  Future<void> _onEvent(AuthEvent event, Emitter<AuthState> emit) async {
    await event.map(
      init: (e) async => add(const AuthEvent.authCheck()),
      authCheck: (e) async {
        final result = await authRepository.isUserLoggedIn();
        await result.fold(
          (invalid) async => emit(const AuthState.unauthenticated()),
          (userStream) async => config.isMockFlavor
              ? emit(const AuthState.authenticated())
              : userStream.listen(
                  (user) async => user != null
                      ? emit(const AuthState.authenticated())
                      : emit(const AuthState.unauthenticated()),
                ),
        );
      },
      logout: (e) async {
        final successOrFailure = await authRepository.logout();
        successOrFailure.fold(
          (failure) => null,
          (success) => emit(
            const AuthState.unauthenticated(),
          ),
        );
      },
    );
  }
}
