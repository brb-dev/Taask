import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:task/application/task/manage_task/manage_task_bloc.dart';
import 'package:task/config.dart';
import 'package:task/domain/core/error/api_failure.dart';
import 'package:task/domain/core/value/value_objects.dart';
import 'package:task/domain/task/entities/task_entity.dart';
import 'package:task/domain/task/value/value_objects.dart';
import 'package:task/infrastructure/task/repositories/task_repository.dart';

class TaskRepoMock extends Mock implements TaskRepository {}

class ConfigMock extends Mock implements Config {}

void main() {
  final TaskRepository taskRepoMock = TaskRepoMock();

  final TaskEntity mockEntity = TaskEntity.empty().copyWith(
    id: '1',
    title: StringValue('Task 1'),
    description: StringValue('Description 1'),
    status: TaskStatus('Done'),
    isDeleteInProgress: false,
    uid: UID('user1'),
  );
  group(
    'Manage Task BLoC Test ',
    () {
      blocTest<ManageTaskBloc, ManageTaskState>(
        'init',
        build: () => ManageTaskBloc(repository: taskRepoMock),
        act: (bloc) async => bloc.add(const ManageTaskEvent.init()),
        expect: () => [
          ManageTaskState.initial(),
        ],
      );

      blocTest<ManageTaskBloc, ManageTaskState>(
        'addOrEditTask with valid Task and Failure',
        build: () => ManageTaskBloc(repository: taskRepoMock),
        setUp: () {
          when(
            () => taskRepoMock.addOrEditTask(
              task: mockEntity,
            ),
          ).thenAnswer(
            (invocation) async => const Left(ApiFailure.other('fake-error')),
          );
        },
        act: (bloc) async => bloc
          ..add(
            ManageTaskEvent.setTaskData(
              data: mockEntity,
            ),
          )
          ..add(const ManageTaskEvent.addOrEditTask()),
        expect: () => [
          ManageTaskState.initial().copyWith(
            task: mockEntity,
          ),
          ManageTaskState.initial().copyWith(
            task: mockEntity,
            isSubmitting: true,
          ),
          ManageTaskState.initial().copyWith(
            task: mockEntity,
            isSubmitting: false,
            failureOrSuccessOption: optionOf(
              const Left(
                ApiFailure.other('fake-error'),
              ),
            ),
          ),
        ],
      );

      blocTest<ManageTaskBloc, ManageTaskState>(
        'addOrEditTask with valid Task and Success',
        build: () => ManageTaskBloc(repository: taskRepoMock),
        setUp: () {
          when(
            () => taskRepoMock.addOrEditTask(
              task: mockEntity,
            ),
          ).thenAnswer(
            (invocation) async => const Right(unit),
          );
        },
        act: (bloc) async => bloc
          ..add(
            ManageTaskEvent.setTaskData(
              data: mockEntity,
            ),
          )
          ..add(const ManageTaskEvent.addOrEditTask()),
        expect: () => [
          ManageTaskState.initial().copyWith(
            task: mockEntity,
          ),
          ManageTaskState.initial().copyWith(
            task: mockEntity,
            isSubmitting: true,
          ),
          ManageTaskState.initial().copyWith(
            task: mockEntity,
            isSubmitting: false,
            isSuccess: true,
          ),
        ],
      );

      blocTest<ManageTaskBloc, ManageTaskState>(
        'addOrEditTask with in-valid Task and validation failure',
        build: () => ManageTaskBloc(repository: taskRepoMock),
        setUp: () {
          when(
            () => taskRepoMock.addOrEditTask(
              task: mockEntity.copyWith(
                title: StringValue(''),
              ),
            ),
          ).thenAnswer(
            (invocation) async => const Right(unit),
          );
        },
        act: (bloc) async => bloc
          ..add(
            ManageTaskEvent.setTaskData(
              data: mockEntity.copyWith(
                title: StringValue(''),
              ),
            ),
          )
          ..add(const ManageTaskEvent.addOrEditTask()),
        expect: () => [
          ManageTaskState.initial().copyWith(
            task: mockEntity.copyWith(
              title: StringValue(''),
            ),
          ),
          ManageTaskState.initial().copyWith(
            task: mockEntity.copyWith(
              title: StringValue(''),
            ),
            showErrorMessages: true,
          ),
        ],
      );

      blocTest<ManageTaskBloc, ManageTaskState>(
        'addOrEditTask with invalid Task',
        build: () => ManageTaskBloc(repository: taskRepoMock),
        setUp: () {
          when(
            () => taskRepoMock.addOrEditTask(
              task: mockEntity,
            ),
          ).thenAnswer(
            (invocation) async => const Right(unit),
          );
        },
        act: (bloc) async => bloc
          ..add(
            ManageTaskEvent.setTaskData(
              data: mockEntity,
            ),
          )
          ..add(const ManageTaskEvent.addOrEditTask()),
        expect: () => [
          ManageTaskState.initial().copyWith(
            task: mockEntity,
          ),
          ManageTaskState.initial().copyWith(
            task: mockEntity,
            isSubmitting: true,
          ),
          ManageTaskState.initial().copyWith(
            task: mockEntity,
            isSuccess: true,
          ),
        ],
      );

      blocTest<ManageTaskBloc, ManageTaskState>(
        'onValueChange',
        build: () => ManageTaskBloc(repository: taskRepoMock),
        act: (bloc) async => bloc
          ..add(
            const ManageTaskEvent.onValueChange(
              label: TaskLebel.title,
              newValue: 'Title 1',
            ),
          )
          ..add(
            const ManageTaskEvent.onValueChange(
              label: TaskLebel.description,
              newValue: 'Description 1',
            ),
          )
          ..add(
            const ManageTaskEvent.onValueChange(
              label: TaskLebel.status,
              newValue: 'To Do',
            ),
          ),
        expect: () => [
          ManageTaskState.initial().copyWith(
            task: TaskEntity.empty().copyWith(
              title: StringValue('Title 1'),
            ),
          ),
          ManageTaskState.initial().copyWith(
            task: TaskEntity.empty().copyWith(
              title: StringValue('Title 1'),
              description: StringValue('Description 1'),
            ),
          ),
          ManageTaskState.initial().copyWith(
            task: TaskEntity.empty().copyWith(
              title: StringValue('Title 1'),
              description: StringValue('Description 1'),
              status: TaskStatus('To Do'),
            ),
          ),
        ],
      );

      blocTest<ManageTaskBloc, ManageTaskState>(
        'deleteTask with Success',
        build: () => ManageTaskBloc(repository: taskRepoMock),
        setUp: () {
          when(
            () => taskRepoMock.deleteTask(
              task: mockEntity,
            ),
          ).thenAnswer(
            (invocation) async => const Right(unit),
          );
        },
        act: (bloc) async => bloc
          ..add(
            ManageTaskEvent.deleteTask(
              data: mockEntity,
            ),
          ),
        expect: () => [
          ManageTaskState.initial().copyWith(
            task: mockEntity.copyWith(
              isDeleteInProgress: true,
            ),
            isSubmitting: true,
          ),
          ManageTaskState.initial().copyWith(
            task: mockEntity.copyWith(
              isDeleteInProgress: true,
            ),
            isSubmitting: false,
          ),
        ],
      );

      blocTest<ManageTaskBloc, ManageTaskState>(
        'deleteTask with Failure',
        build: () => ManageTaskBloc(repository: taskRepoMock),
        setUp: () {
          when(
            () => taskRepoMock.deleteTask(
              task: mockEntity,
            ),
          ).thenAnswer(
            (invocation) async => const Left(ApiFailure.other('Fake-Error')),
          );
        },
        act: (bloc) async => bloc
          ..add(
            ManageTaskEvent.deleteTask(
              data: mockEntity,
            ),
          ),
        expect: () => [
          ManageTaskState.initial().copyWith(
            task: mockEntity.copyWith(
              isDeleteInProgress: true,
            ),
            isSubmitting: true,
          ),
          ManageTaskState.initial().copyWith(
            task: mockEntity.copyWith(
              isDeleteInProgress: true,
            ),
            isSubmitting: false,
            failureOrSuccessOption: optionOf(
              const Left(
                ApiFailure.other('Fake-Error'),
              ),
            ),
          ),
        ],
      );
    },
  );
}
