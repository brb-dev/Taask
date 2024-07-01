import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:task/application/auth/user/user_bloc.dart';
import 'package:task/domain/auth/entities/task_user.dart';
import 'package:task/domain/auth/value/value_objects.dart';
import 'package:task/domain/core/error/api_failure.dart';
import 'package:task/infrastructure/auth/repositories/auth_repository.dart';

class AuthRepoMock extends Mock implements AuthRepository {}

void main() {
  final AuthRepository authRepoMock = AuthRepoMock();
  group(
    'User Bloc Test',
    () {
      blocTest<UserBloc, UserState>(
        'emailChanged',
        build: () => UserBloc(repository: authRepoMock),
        act: (bloc) async => bloc.add(const UserEvent.initialized()),
        expect: () => [
          UserState.initial(),
        ],
      );
      blocTest<UserBloc, UserState>(
        'changeMode',
        build: () => UserBloc(repository: authRepoMock),
        act: (bloc) async => bloc.add(const UserEvent.changeMode()),
        expect: () => [
          UserState.initial().copyWith(isEdit: true),
        ],
      );
      blocTest<UserBloc, UserState>(
        'Fetch Failure',
        build: () => UserBloc(repository: authRepoMock),
        setUp: () {
          when(
            () => authRepoMock.fetchUser(),
          ).thenAnswer(
            (invocation) async => const Left(ApiFailure.other('fake-error')),
          );
        },
        act: (bloc) async => bloc.add(const UserEvent.fetch()),
        expect: () => [
          UserState.initial().copyWith(
              userFailureOrSuccessOption:
                  optionOf(const Left(ApiFailure.other('fake-error')))),
        ],
      );
      blocTest<UserBloc, UserState>(
        'Fetch Success',
        build: () => UserBloc(repository: authRepoMock),
        setUp: () {
          when(
            () => authRepoMock.fetchUser(),
          ).thenAnswer(
            (invocation) async => Right(
              TaskUser.empty().copyWith(
                email: EmailAddress('brb@yopmail.com'),
                userName: 'brb',
              ),
            ),
          );
        },
        act: (bloc) async => bloc.add(const UserEvent.fetch()),
        expect: () => [
          UserState.initial().copyWith(
            user: TaskUser.empty().copyWith(
              email: EmailAddress('brb@yopmail.com'),
              userName: 'brb',
            ),
            userFailureOrSuccessOption: none(),
          ),
        ],
      );
    },
  );
}
