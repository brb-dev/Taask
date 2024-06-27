import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/auth/entities/task_user.dart';
import '../../../domain/auth/repositories/i_auth_repository.dart';
import '../../../domain/auth/value/value_objects.dart';
import '../../../domain/core/error/api_failure.dart';

part 'register_form_bloc.freezed.dart';
part 'register_form_event.dart';
part 'register_form_state.dart';

class RegisterFormBloc extends Bloc<RegisterFormEvent, RegisterFormState> {
  final IAuthRepository authRepository;

  RegisterFormBloc({
    required this.authRepository,
  }) : super(RegisterFormState.initial()) {
    on<RegisterFormEvent>(_onEvent);
  }

  Future<void> _onEvent(
    RegisterFormEvent event,
    Emitter<RegisterFormState> emit,
  ) async {
    await event.map(
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
      registerWithEmailAndPasswordPressed: (e) async {
        final isEmailnameValid = state.email.isValid();
        final isPasswordValid = state.password.isValid();
        final isConfirmPasswordValid = state.confirmPassword.isValid();
        final isUsernameValid = state.username.isValid();

        if (isUsernameValid &&
            isPasswordValid &&
            isEmailnameValid &&
            isConfirmPasswordValid) {
          emit(
            state.copyWith(
              isSubmitting: true,
              authFailureOrSuccessOption: none(),
            ),
          );
          final failureOrSuccess =
              await authRepository.registerWithEmailAndPassword(
                  user: TaskUser.empty().copyWith(
            displayName: state.username.getOrCrash(),
            email: state.email,
            password: state.password.getOrCrash(),
            userName: state.username.getOrCrash(),
          ));

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
      confirmPasswordChanged: (e) {
        emit(
          state.copyWith(
            confirmPassword: Password.confirm(
                e.confirmPasswordStr, state.password.getOrDefaultValue('')),
            authFailureOrSuccessOption: none(),
          ),
        );
      },
      confirmPasswordVisibilityChanged: (e) {
        emit(
          state.copyWith(
            confirmPasswordVisible: !state.confirmPasswordVisible,
          ),
        );
      },
      userNameChanged: (e) {
        emit(
          state.copyWith(
            username: Username(e.usernameStr),
            authFailureOrSuccessOption: none(),
          ),
        );
      },
    );
  }
}
