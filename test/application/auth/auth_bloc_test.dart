import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:task/application/auth/auth_bloc.dart';
import 'package:task/config.dart';
import 'package:task/domain/core/error/api_failure.dart';
import 'package:task/infrastructure/auth/repositories/auth_repository.dart';

class AuthRepoMock extends Mock implements AuthRepository {}

class ConfigMock extends Mock implements Config {}

class MockUser extends Mock implements User {}

void main() {
  final AuthRepository authRepoMock = AuthRepoMock();
  final Config configMock = ConfigMock();
  group(
    'Auth Bloc Test',
    () {
      setUpAll(
        () {
          when(() => configMock.isMockFlavor).thenReturn(false);
        },
      );
      blocTest<AuthBloc, AuthState>(
        'Init with Auth Check Failure',
        build: () => AuthBloc(authRepository: authRepoMock, config: configMock),
        setUp: () {
          when(() => authRepoMock.isUserLoggedIn()).thenAnswer(
            (invocation) async => const Left(ApiFailure.other('fake-error')),
          );
        },
        act: (bloc) async => bloc.add(const AuthEvent.init()),
        expect: () => [
          const AuthState.unauthenticated(),
        ],
      );
      blocTest<AuthBloc, AuthState>(
        'Init with Auth Check Success',
        build: () => AuthBloc(authRepository: authRepoMock, config: configMock),
        setUp: () {
          when(
            () => authRepoMock.isUserLoggedIn(),
          ).thenAnswer(
            (invocation) async => Right(Stream.fromIterable([MockUser()])),
          );
        },
        act: (bloc) async => bloc.add(const AuthEvent.init()),
        expect: () => [
          const AuthState.authenticated(),
        ],
      );

      blocTest<AuthBloc, AuthState>(
        'Init with Auth Check with null user',
        build: () => AuthBloc(authRepository: authRepoMock, config: configMock),
        setUp: () {
          when(
            () => authRepoMock.isUserLoggedIn(),
          ).thenAnswer(
            (invocation) async => Right(Stream.fromIterable([null])),
          );
        },
        act: (bloc) async => bloc.add(const AuthEvent.init()),
        expect: () => [
          const AuthState.unauthenticated(),
        ],
      );
      blocTest<AuthBloc, AuthState>(
        'Logout Failure',
        build: () => AuthBloc(authRepository: authRepoMock, config: configMock),
        setUp: () {
          when(
            () => authRepoMock.logout(),
          ).thenAnswer(
            (invocation) async => const Left(ApiFailure.other('fake-error')),
          );
        },
        act: (bloc) async => bloc.add(const AuthEvent.logout()),
        expect: () => [],
      );
      blocTest<AuthBloc, AuthState>(
        'Logout Success',
        build: () => AuthBloc(authRepository: authRepoMock, config: configMock),
        setUp: () {
          when(
            () => authRepoMock.logout(),
          ).thenAnswer(
            (invocation) async => const Right(unit),
          );
        },
        act: (bloc) async => bloc.add(const AuthEvent.logout()),
        expect: () => [
          const AuthState.unauthenticated(),
        ],
      );
      blocTest<AuthBloc, AuthState>(
        'Init with Auth Check Success for MOCK user',
        build: () => AuthBloc(authRepository: authRepoMock, config: configMock),
        setUp: () {
          when(() => configMock.isMockFlavor).thenReturn(true);
          when(
            () => authRepoMock.isUserLoggedIn(),
          ).thenAnswer(
            (invocation) async => Right(Stream.fromIterable([MockUser()])),
          );
        },
        act: (bloc) async => bloc.add(const AuthEvent.init()),
        expect: () => [
          const AuthState.authenticated(),
        ],
      );
    },
  );
}
