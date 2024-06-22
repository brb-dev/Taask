part of 'register_form_bloc.dart';

@freezed
class RegisterFormState with _$RegisterFormState {
  const RegisterFormState._();

  const factory RegisterFormState({
    required EmailAddress email,
    required Password password,
    required Password confirmPassword,
    required Username username,
    required bool passwordVisible,
    required bool confirmPasswordVisible,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<ApiFailure, dynamic>> authFailureOrSuccessOption,
  }) = _RegisterFormState;

  factory RegisterFormState.initial() => RegisterFormState(
        email: EmailAddress(''),
        password: Password.login(''),
        confirmPassword: Password.confirm('', ''),
        passwordVisible: false,
        confirmPasswordVisible: false,
        username: Username(''),
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
