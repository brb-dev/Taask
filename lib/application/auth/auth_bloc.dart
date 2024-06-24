import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../config.dart';
import '../../domain/auth/entities/task_user.dart';
import '../../domain/auth/repositories/i_auth_repository.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthRepository authRepository;
  final Config config;

  late StreamSubscription<User?> _userSubscription;

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
              ? emit(
                  AuthState.authenticated(
                    user: TaskUser.empty().copyWith(
                      displayName: 'John Doe',
                      email: 'johndoe@yopmail.com',
                      profilePicUrl: '',
                      uid: '1',
                      userName: 'John',
                    ),
                  ),
                )
              : userStream.listen((user) => user != null
                  ? emit(
                      AuthState.authenticated(
                        user: TaskUser.empty().copyWith(
                          uid: user.uid,
                          displayName: user.displayName ?? '',
                          email: user.email!,
                          profilePicUrl: user.photoURL ?? '',
                          userName: user.displayName ?? '',
                        ),
                      ),
                    )
                  : emit(const AuthState.unauthenticated())),
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

  @override
  void onChange(Change<AuthState> change) {
    super.onChange(change);
  }

  @override
  Future<void> close() {
    _userSubscription.cancel();
    return super.close();
  }
}
