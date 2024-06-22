part of 'register_form_bloc.dart';

@freezed
class RegisterFormEvent with _$RegisterFormEvent {
  const factory RegisterFormEvent.emailChanged(String emailStr) = _EmailChanged;
  const factory RegisterFormEvent.userNameChanged(String usernameStr) =
      _UserNameChanged;
  const factory RegisterFormEvent.passwordChanged(String passwordStr) =
      _PasswordChanged;
  const factory RegisterFormEvent.passwordVisibilityChanged() =
      _PasswordVisibleChanged;
  const factory RegisterFormEvent.confirmPasswordChanged(
      String confirmPasswordStr) = _ConfirmPasswordChanged;
  const factory RegisterFormEvent.confirmPasswordVisibilityChanged() =
      _ConfirmPasswordVisibleChanged;
  const factory RegisterFormEvent.registerWithEmailAndPasswordPressed() =
      _RegisterWithEmailAndPasswordPressed;
}
