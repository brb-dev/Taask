import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:task/application/auth/login/login_form_bloc.dart';
import 'package:task/domain/auth/value/value_objects.dart';
import 'package:task/domain/core/error/api_failure.dart';
import 'package:task/infrastructure/auth/repositories/auth_repository.dart';

class AuthRepoMock extends Mock implements AuthRepository {}

void main() {
  final AuthRepository authRepoMock = AuthRepoMock();

  group(
    'Login Form BLOC Test',
    () {
      blocTest<LoginFormBloc, LoginFormState>(
        'emailChanged',
        build: () => LoginFormBloc(authRepository: authRepoMock),
        act: (bloc) async => bloc.add(const LoginFormEvent.emailChanged('som')),
        expect: () => [
          LoginFormState.initial().copyWith(email: EmailAddress('som')),
        ],
      );
      blocTest<LoginFormBloc, LoginFormState>(
        'passwordChanged',
        build: () => LoginFormBloc(authRepository: authRepoMock),
        act: (bloc) async =>
            bloc.add(const LoginFormEvent.passwordChanged('pass')),
        expect: () => [
          LoginFormState.initial().copyWith(password: Password.login('pass')),
        ],
      );
      blocTest<LoginFormBloc, LoginFormState>(
        'passwordVisibilityChanged',
        build: () => LoginFormBloc(authRepository: authRepoMock),
        act: (bloc) async =>
            bloc.add(const LoginFormEvent.passwordVisibilityChanged()),
        expect: () => [
          LoginFormState.initial().copyWith(passwordVisible: true),
        ],
      );
      blocTest<LoginFormBloc, LoginFormState>(
        'rememberCheckChanged',
        build: () => LoginFormBloc(authRepository: authRepoMock),
        act: (bloc) async =>
            bloc.add(const LoginFormEvent.rememberCheckChanged()),
        expect: () => [
          LoginFormState.initial().copyWith(rememberPassword: true),
        ],
      );
      blocTest<LoginFormBloc, LoginFormState>(
        'loadLastSavedCred',
        build: () => LoginFormBloc(authRepository: authRepoMock),
        act: (bloc) async => bloc.add(const LoginFormEvent.loadLastSavedCred()),
        expect: () => [
          LoginFormState.initial().copyWith(isSubmitting: true),
        ],
      );
      blocTest<LoginFormBloc, LoginFormState>(
        'loginWithEmailAndPasswordPressed with Validation Failure',
        build: () => LoginFormBloc(authRepository: authRepoMock),
        act: (bloc) async =>
            bloc.add(const LoginFormEvent.loginWithEmailAndPasswordPressed()),
        expect: () => [
          LoginFormState.initial().copyWith(showErrorMessages: true),
        ],
      );
      blocTest<LoginFormBloc, LoginFormState>(
        'loginWithEmailAndPasswordPressed with  Failure',
        build: () => LoginFormBloc(authRepository: authRepoMock),
        setUp: () {
          when(
            () => authRepoMock.loginWithEmailAndPassword(
              email: EmailAddress('brb@yopmail.com'),
              password: Password.login('Test@1234'),
            ),
          ).thenAnswer(
            (invocation) async => const Left(ApiFailure.other('fake-error')),
          );
        },
        act: (bloc) async => bloc
          ..add(const LoginFormEvent.emailChanged('brb@yopmail.com'))
          ..add(const LoginFormEvent.passwordChanged('Test@1234'))
          ..add(const LoginFormEvent.loginWithEmailAndPasswordPressed()),
        expect: () => [
          LoginFormState.initial().copyWith(
            email: EmailAddress('brb@yopmail.com'),
          ),
          LoginFormState.initial().copyWith(
            email: EmailAddress('brb@yopmail.com'),
            password: Password.login('Test@1234'),
          ),
          LoginFormState.initial().copyWith(
            email: EmailAddress('brb@yopmail.com'),
            password: Password.login('Test@1234'),
            isSubmitting: true,
          ),
          LoginFormState.initial().copyWith(
            email: EmailAddress('brb@yopmail.com'),
            password: Password.login('Test@1234'),
            isSubmitting: false,
            showErrorMessages: true,
            authFailureOrSuccessOption:
                optionOf(const Left(ApiFailure.other('fake-error'))),
          ),
        ],
      );

      blocTest<LoginFormBloc, LoginFormState>(
        'loginWithEmailAndPasswordPressed with  Success',
        build: () => LoginFormBloc(authRepository: authRepoMock),
        setUp: () {
          when(
            () => authRepoMock.loginWithEmailAndPassword(
              email: EmailAddress('brb@yopmail.com'),
              password: Password.login('Test@1234'),
            ),
          ).thenAnswer(
            (invocation) async => const Right(unit),
          );
        },
        act: (bloc) async => bloc
          ..add(const LoginFormEvent.emailChanged('brb@yopmail.com'))
          ..add(const LoginFormEvent.passwordChanged('Test@1234'))
          ..add(const LoginFormEvent.loginWithEmailAndPasswordPressed()),
        expect: () => [
          LoginFormState.initial().copyWith(
            email: EmailAddress('brb@yopmail.com'),
          ),
          LoginFormState.initial().copyWith(
            email: EmailAddress('brb@yopmail.com'),
            password: Password.login('Test@1234'),
          ),
          LoginFormState.initial().copyWith(
            email: EmailAddress('brb@yopmail.com'),
            password: Password.login('Test@1234'),
            isSubmitting: true,
          ),
          LoginFormState.initial().copyWith(
            email: EmailAddress(''),
            password: Password.login(''),
            isSubmitting: false,
            showErrorMessages: false,
            authFailureOrSuccessOption: optionOf(const Right(unit)),
          ),
        ],
      );
    },
  );
}
