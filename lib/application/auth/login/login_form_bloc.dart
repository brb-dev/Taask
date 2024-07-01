import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/auth/repositories/i_auth_repository.dart';
import '../../../domain/auth/value/value_objects.dart';
import '../../../domain/core/error/api_failure.dart';

part 'login_form_bloc.freezed.dart';
part 'login_form_event.dart';
part 'login_form_state.dart';

class LoginFormBloc extends Bloc<LoginFormEvent, LoginFormState> {
  final IAuthRepository authRepository;

  LoginFormBloc({
    required this.authRepository,
  }) : super(LoginFormState.initial()) {
    on<LoginFormEvent>(_onEvent);
  }

  Future<void> _onEvent(
    LoginFormEvent event,
    Emitter<LoginFormState> emit,
  ) async {
    await event.map(
      loadLastSavedCred: (e) async {
        emit(state.copyWith(isSubmitting: true));
      },
      emailChanged: (e) {
        emit(
          state.copyWith(
            email: EmailAddress(e.emailStr),
            authFailureOrSuccessOption: none(),
          ),
        );
      },
      passwordChanged: (e) {
        emit(
          state.copyWith(
            password: Password.login(e.passwordStr),
            authFailureOrSuccessOption: none(),
          ),
        );
      },
      passwordVisibilityChanged: (e) {
        emit(state.copyWith(passwordVisible: !state.passwordVisible));
      },
      rememberCheckChanged: (e) {
        emit(state.copyWith(rememberPassword: !state.rememberPassword));
      },
      loginWithEmailAndPasswordPressed: (e) async {
        final isUsernameValid = state.email.isValid();
        final isPasswordValid = state.password.isValid();

        if (isUsernameValid && isPasswordValid) {
          emit(
            state.copyWith(
              isSubmitting: true,
              authFailureOrSuccessOption: none(),
            ),
          );
          final failureOrSuccess =
              await authRepository.loginWithEmailAndPassword(
            email: state.email,
            password: state.password,
          );

          await failureOrSuccess.fold(
            (_) {
              emit(
                state.copyWith(
                  isSubmitting: false,
                  showErrorMessages: true,
                  authFailureOrSuccessOption: optionOf(failureOrSuccess),
                ),
              );
            },
            (login) async {
              emit(
                state.copyWith(
                  isSubmitting: false,
                  showErrorMessages: false,
                  email: EmailAddress(''),
                  password: Password.login(''),
                  authFailureOrSuccessOption: optionOf(failureOrSuccess),
                ),
              );
            },
          );
        } else {
          emit(state.copyWith(showErrorMessages: true));
        }
      },
    );
  }
}
