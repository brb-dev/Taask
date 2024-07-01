import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:task/application/auth/register/register_form_bloc.dart';
import 'package:task/domain/auth/entities/task_user.dart';
import 'package:task/domain/auth/value/value_objects.dart';
import 'package:task/domain/core/error/api_failure.dart';
import 'package:task/infrastructure/auth/repositories/auth_repository.dart';

class AuthRepoMock extends Mock implements AuthRepository {}

void main() {
  final AuthRepository authRepoMock = AuthRepoMock();

  group(
    'Register Form BLOC Test',
    () {
      blocTest<RegisterFormBloc, RegisterFormState>(
        'emailChanged',
        build: () => RegisterFormBloc(authRepository: authRepoMock),
        act: (bloc) async =>
            bloc.add(const RegisterFormEvent.emailChanged('som')),
        expect: () => [
          RegisterFormState.initial().copyWith(email: EmailAddress('som')),
        ],
      );
      blocTest<RegisterFormBloc, RegisterFormState>(
        'passwordChanged',
        build: () => RegisterFormBloc(authRepository: authRepoMock),
        act: (bloc) async =>
            bloc.add(const RegisterFormEvent.passwordChanged('pass')),
        expect: () => [
          RegisterFormState.initial()
              .copyWith(password: Password.login('pass')),
        ],
      );
      blocTest<RegisterFormBloc, RegisterFormState>(
        'userNameChanged',
        build: () => RegisterFormBloc(authRepository: authRepoMock),
        act: (bloc) async =>
            bloc.add(const RegisterFormEvent.userNameChanged('user')),
        expect: () => [
          RegisterFormState.initial().copyWith(username: Username('user')),
        ],
      );
      blocTest<RegisterFormBloc, RegisterFormState>(
        'confirmPasswordChanged',
        build: () => RegisterFormBloc(authRepository: authRepoMock),
        act: (bloc) async => bloc
          ..add(const RegisterFormEvent.passwordChanged('pass'))
          ..add(const RegisterFormEvent.confirmPasswordChanged('pass')),
        expect: () => [
          RegisterFormState.initial()
              .copyWith(password: Password.login('pass')),
          RegisterFormState.initial().copyWith(
              password: Password.login('pass'),
              confirmPassword: Password.confirm('pass', 'pass')),
        ],
      );
      blocTest<RegisterFormBloc, RegisterFormState>(
        'passwordVisibilityChanged',
        build: () => RegisterFormBloc(authRepository: authRepoMock),
        act: (bloc) async =>
            bloc.add(const RegisterFormEvent.passwordVisibilityChanged()),
        expect: () => [
          RegisterFormState.initial().copyWith(passwordVisible: true),
        ],
      );
      blocTest<RegisterFormBloc, RegisterFormState>(
        'confirmPasswordVisibilityChanged',
        build: () => RegisterFormBloc(authRepository: authRepoMock),
        act: (bloc) async => bloc
            .add(const RegisterFormEvent.confirmPasswordVisibilityChanged()),
        expect: () => [
          RegisterFormState.initial().copyWith(confirmPasswordVisible: true),
        ],
      );
      blocTest<RegisterFormBloc, RegisterFormState>(
        'registerWithEmailAndPasswordPressed with validation failure',
        build: () => RegisterFormBloc(authRepository: authRepoMock),
        setUp: () {
          when(
            () => authRepoMock.registerWithEmailAndPassword(
              user: TaskUser.empty().copyWith().copyWith(
                    displayName: 'Katrina',
                    email: EmailAddress('kat@yopmail.com'),
                    password: 'Test@1234',
                    userName: '',
                  ),
            ),
          ).thenAnswer(
            (invocation) async => const Left(ApiFailure.other('fake-error')),
          );
        },
        act: (bloc) async => bloc
          ..add(const RegisterFormEvent.userNameChanged(''))
          ..add(const RegisterFormEvent.emailChanged('kat@yopmail.com'))
          ..add(const RegisterFormEvent.passwordChanged('Test@1234'))
          ..add(const RegisterFormEvent.confirmPasswordChanged('Test@1234'))
          ..add(const RegisterFormEvent.registerWithEmailAndPasswordPressed()),
        expect: () => [
          RegisterFormState.initial().copyWith(username: Username('')),
          RegisterFormState.initial().copyWith(
            username: Username(''),
            email: EmailAddress('kat@yopmail.com'),
          ),
          RegisterFormState.initial().copyWith(
            username: Username(''),
            email: EmailAddress('kat@yopmail.com'),
            password: Password.login('Test@1234'),
          ),
          RegisterFormState.initial().copyWith(
            username: Username(''),
            email: EmailAddress('kat@yopmail.com'),
            password: Password.login('Test@1234'),
            confirmPassword: Password.confirm('Test@1234', 'Test@1234'),
          ),
          RegisterFormState.initial().copyWith(
            username: Username(''),
            email: EmailAddress('kat@yopmail.com'),
            password: Password.login('Test@1234'),
            confirmPassword: Password.confirm('Test@1234', 'Test@1234'),
            showErrorMessages: true,
          ),
        ],
      );
      blocTest<RegisterFormBloc, RegisterFormState>(
        'registerWithEmailAndPasswordPressed Failure',
        build: () => RegisterFormBloc(authRepository: authRepoMock),
        setUp: () {
          when(
            () => authRepoMock.registerWithEmailAndPassword(
              user: TaskUser.empty().copyWith().copyWith(
                    displayName: 'Katrina',
                    email: EmailAddress('kat@yopmail.com'),
                    password: 'Test@1234',
                    userName: 'Katrina',
                  ),
            ),
          ).thenAnswer(
            (invocation) async => const Left(ApiFailure.other('fake-error')),
          );
        },
        act: (bloc) async => bloc
          ..add(const RegisterFormEvent.userNameChanged('Katrina'))
          ..add(const RegisterFormEvent.emailChanged('kat@yopmail.com'))
          ..add(const RegisterFormEvent.passwordChanged('Test@1234'))
          ..add(const RegisterFormEvent.confirmPasswordChanged('Test@1234'))
          ..add(const RegisterFormEvent.registerWithEmailAndPasswordPressed()),
        expect: () => [
          RegisterFormState.initial().copyWith(username: Username('Katrina')),
          RegisterFormState.initial().copyWith(
            username: Username('Katrina'),
            email: EmailAddress('kat@yopmail.com'),
          ),
          RegisterFormState.initial().copyWith(
            username: Username('Katrina'),
            email: EmailAddress('kat@yopmail.com'),
            password: Password.login('Test@1234'),
          ),
          RegisterFormState.initial().copyWith(
            username: Username('Katrina'),
            email: EmailAddress('kat@yopmail.com'),
            password: Password.login('Test@1234'),
            confirmPassword: Password.confirm('Test@1234', 'Test@1234'),
          ),
          RegisterFormState.initial().copyWith(
            username: Username('Katrina'),
            email: EmailAddress('kat@yopmail.com'),
            password: Password.login('Test@1234'),
            confirmPassword: Password.confirm('Test@1234', 'Test@1234'),
            isSubmitting: true,
          ),
          RegisterFormState.initial().copyWith(
            username: Username('Katrina'),
            email: EmailAddress('kat@yopmail.com'),
            password: Password.login('Test@1234'),
            confirmPassword: Password.confirm('Test@1234', 'Test@1234'),
            isSubmitting: false,
            showErrorMessages: true,
            authFailureOrSuccessOption:
                optionOf(const Left(ApiFailure.other('fake-error'))),
          ),
        ],
      );
      blocTest<RegisterFormBloc, RegisterFormState>(
        'registerWithEmailAndPasswordPressed Success',
        build: () => RegisterFormBloc(authRepository: authRepoMock),
        setUp: () {
          when(
            () => authRepoMock.registerWithEmailAndPassword(
              user: TaskUser.empty().copyWith().copyWith(
                    displayName: 'Katrina',
                    email: EmailAddress('kat@yopmail.com'),
                    password: 'Test@1234',
                    userName: 'Katrina',
                  ),
            ),
          ).thenAnswer(
            (invocation) async => const Right(unit),
          );
        },
        act: (bloc) async => bloc
          ..add(const RegisterFormEvent.userNameChanged('Katrina'))
          ..add(const RegisterFormEvent.emailChanged('kat@yopmail.com'))
          ..add(const RegisterFormEvent.passwordChanged('Test@1234'))
          ..add(const RegisterFormEvent.confirmPasswordChanged('Test@1234'))
          ..add(const RegisterFormEvent.registerWithEmailAndPasswordPressed()),
        expect: () => [
          RegisterFormState.initial().copyWith(username: Username('Katrina')),
          RegisterFormState.initial().copyWith(
            username: Username('Katrina'),
            email: EmailAddress('kat@yopmail.com'),
          ),
          RegisterFormState.initial().copyWith(
            username: Username('Katrina'),
            email: EmailAddress('kat@yopmail.com'),
            password: Password.login('Test@1234'),
          ),
          RegisterFormState.initial().copyWith(
            username: Username('Katrina'),
            email: EmailAddress('kat@yopmail.com'),
            password: Password.login('Test@1234'),
            confirmPassword: Password.confirm('Test@1234', 'Test@1234'),
          ),
          RegisterFormState.initial().copyWith(
            username: Username('Katrina'),
            email: EmailAddress('kat@yopmail.com'),
            password: Password.login('Test@1234'),
            confirmPassword: Password.confirm('Test@1234', 'Test@1234'),
            isSubmitting: true,
          ),
          RegisterFormState.initial().copyWith(
            username: Username('Katrina'),
            email: EmailAddress(''),
            password: Password.login(''),
            confirmPassword: Password.confirm('Test@1234', 'Test@1234'),
            isSubmitting: false,
            showErrorMessages: false,
            authFailureOrSuccessOption: none(),
          ),
        ],
      );
    },
  );
}
