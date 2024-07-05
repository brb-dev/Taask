import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:task/application/task/task_bloc.dart';
import 'package:task/config.dart';
import 'package:task/domain/auth/entities/task_user.dart';
import 'package:task/domain/core/error/api_failure.dart';
import 'package:task/domain/core/value/value_objects.dart';
import 'package:task/domain/task/entities/task_entity.dart';
import 'package:task/domain/task/entities/task_filter_entity.dart';
import 'package:task/domain/task/value/value_objects.dart';
import 'package:task/infrastructure/task/repositories/task_repository.dart';

class TaskRepoMock extends Mock implements TaskRepository {}

class ConfigMock extends Mock implements Config {}

void main() {
  final TaskRepository taskRepoMock = TaskRepoMock();
  final Config configMock = ConfigMock();
  group(
    'Task Bloc',
    () {
      blocTest<TaskBloc, TaskState>(
        'init',
        build: () => TaskBloc(
          repository: taskRepoMock,
          config: configMock,
        ),
        act: (bloc) async => bloc.add(const TaskEvent.init()),
        expect: () => [
          TaskState.initial(),
        ],
      );
      blocTest<TaskBloc, TaskState>(
        'fetchTaskList Failure',
        build: () => TaskBloc(
          repository: taskRepoMock,
          config: configMock,
        ),
        setUp: () {
          when(
            () => configMock.pageSize,
          ).thenReturn(24);
          when(
            () => taskRepoMock.fetchTaskItems(
              user: TaskUser.empty(),
              appliedFilter: TaskFilterEntity.empty(),
              searchKey: SearchKey(''),
              pageSize: 24,
              offSet: 0,
            ),
          ).thenAnswer(
            (invocation) async => const Left(ApiFailure.other('fake-error')),
          );
        },
        act: (bloc) async => bloc.add(
          TaskEvent.fetchTaskList(
            user: TaskUser.empty(),
            filter: TaskFilterEntity.empty(),
            searchKey: SearchKey(''),
          ),
        ),
        expect: () => [
          TaskState.initial().copyWith(
            isFetching: true,
            authFailureOrSuccessOption: none(),
            taskList: <TaskEntity>[],
            searchKey: SearchKey(''),
            appliedFilter: TaskFilterEntity.empty(),
          ),
          TaskState.initial().copyWith(
            isFetching: false,
            authFailureOrSuccessOption:
                optionOf(const Left(ApiFailure.other('fake-error'))),
            taskList: <TaskEntity>[],
            searchKey: SearchKey(''),
            appliedFilter: TaskFilterEntity.empty(),
          ),
        ],
      );
      blocTest<TaskBloc, TaskState>(
        'fetchTaskList Success',
        build: () => TaskBloc(
          repository: taskRepoMock,
          config: configMock,
        ),
        setUp: () {
          when(
            () => configMock.pageSize,
          ).thenReturn(24);
          when(
            () => taskRepoMock.fetchTaskItems(
              user: TaskUser.empty(),
              appliedFilter: TaskFilterEntity.empty(),
              searchKey: SearchKey(''),
              pageSize: 24,
              offSet: 0,
            ),
          ).thenAnswer(
            (invocation) async => Right(
              <TaskEntity>[
                TaskEntity.empty().copyWith(
                  id: '1',
                  title: StringValue('Go To Gym'),
                  description: StringValue('Need To go to Gym'),
                  status: TaskStatus('To Do'),
                ),
                TaskEntity.empty().copyWith(
                  id: '2',
                  title: StringValue('Play Football'),
                  description: StringValue('Need To play football'),
                  status: TaskStatus('Done'),
                ),
              ],
            ),
          );
        },
        act: (bloc) async => bloc.add(
          TaskEvent.fetchTaskList(
            user: TaskUser.empty(),
            filter: TaskFilterEntity.empty(),
            searchKey: SearchKey(''),
          ),
        ),
        expect: () => [
          TaskState.initial().copyWith(
            isFetching: true,
            authFailureOrSuccessOption: none(),
            taskList: <TaskEntity>[],
            searchKey: SearchKey(''),
            appliedFilter: TaskFilterEntity.empty(),
          ),
          TaskState.initial().copyWith(
            isFetching: false,
            authFailureOrSuccessOption: none(),
            taskList: <TaskEntity>[
              TaskEntity.empty().copyWith(
                id: '1',
                title: StringValue('Go To Gym'),
                description: StringValue('Need To go to Gym'),
                status: TaskStatus('To Do'),
              ),
              TaskEntity.empty().copyWith(
                id: '2',
                title: StringValue('Play Football'),
                description: StringValue('Need To play football'),
                status: TaskStatus('Done'),
              ),
            ],
            searchKey: SearchKey(''),
            appliedFilter: TaskFilterEntity.empty(),
            canLoadMore: false,
          ),
        ],
      );
      blocTest<TaskBloc, TaskState>(
        'loadMoreTaskItem Failure',
        build: () => TaskBloc(
          repository: taskRepoMock,
          config: configMock,
        ),
        seed: () {
          return TaskState.initial().copyWith(
            canLoadMore: true,
            taskList: <TaskEntity>[
              TaskEntity.empty().copyWith(
                id: '1',
                title: StringValue('Task 1'),
                description: StringValue('Task 1 description'),
                status: TaskStatus('To Do'),
              ),
              TaskEntity.empty().copyWith(
                id: '2',
                title: StringValue('Task 2'),
                description: StringValue('Task 2 description'),
                status: TaskStatus('Done'),
              ),
            ],
          );
        },
        setUp: () {
          when(
            () => configMock.pageSize,
          ).thenReturn(2);
          when(
            () => taskRepoMock.fetchTaskItems(
              user: TaskUser.empty(),
              appliedFilter: TaskFilterEntity.empty(),
              searchKey: SearchKey(''),
              pageSize: 2,
              offSet: 2,
            ),
          ).thenAnswer(
            (invocation) async => const Left(ApiFailure.other('fake-error')),
          );
        },
        act: (bloc) async => bloc.add(
          const TaskEvent.loadMoreTaskItem(),
        ),
        expect: () => [
          TaskState.initial().copyWith(
            isFetching: true,
            authFailureOrSuccessOption: none(),
            canLoadMore: true,
            taskList: <TaskEntity>[
              TaskEntity.empty().copyWith(
                id: '1',
                title: StringValue('Task 1'),
                description: StringValue('Task 1 description'),
                status: TaskStatus('To Do'),
              ),
              TaskEntity.empty().copyWith(
                id: '2',
                title: StringValue('Task 2'),
                description: StringValue('Task 2 description'),
                status: TaskStatus('Done'),
              ),
            ],
          ),
          TaskState.initial().copyWith(
            isFetching: false,
            authFailureOrSuccessOption:
                optionOf(const Left(ApiFailure.other('fake-error'))),
            taskList: <TaskEntity>[
              TaskEntity.empty().copyWith(
                id: '1',
                title: StringValue('Task 1'),
                description: StringValue('Task 1 description'),
                status: TaskStatus('To Do'),
              ),
              TaskEntity.empty().copyWith(
                id: '2',
                title: StringValue('Task 2'),
                description: StringValue('Task 2 description'),
                status: TaskStatus('Done'),
              ),
            ],
            searchKey: SearchKey(''),
            appliedFilter: TaskFilterEntity.empty(),
            canLoadMore: false,
          ),
        ],
      );

      blocTest<TaskBloc, TaskState>(
        'loadMoreTaskItem Success',
        build: () => TaskBloc(
          repository: taskRepoMock,
          config: configMock,
        ),
        seed: () => TaskState.initial().copyWith(
          canLoadMore: true,
          taskList: <TaskEntity>[
            TaskEntity.empty().copyWith(
              id: '1',
              title: StringValue('Task 1'),
              description: StringValue('Task 1 description'),
              status: TaskStatus('To Do'),
            ),
            TaskEntity.empty().copyWith(
              id: '2',
              title: StringValue('Task 2'),
              description: StringValue('Task 2 description'),
              status: TaskStatus('Done'),
            ),
          ],
        ),
        setUp: () {
          when(
            () => configMock.pageSize,
          ).thenReturn(2);
          when(
            () => taskRepoMock.fetchTaskItems(
              user: TaskUser.empty(),
              appliedFilter: TaskFilterEntity.empty(),
              searchKey: SearchKey(''),
              pageSize: 2,
              offSet: 2,
            ),
          ).thenAnswer(
            (invocation) async => Right(
              <TaskEntity>[
                TaskEntity.empty().copyWith(
                  id: '3',
                  title: StringValue('Task 3'),
                  description: StringValue('Task 3 description'),
                  status: TaskStatus('To Do'),
                ),
                TaskEntity.empty().copyWith(
                  id: '4',
                  title: StringValue('Task 4'),
                  description: StringValue('Task 4 description'),
                  status: TaskStatus('Done'),
                ),
              ],
            ),
          );
        },
        act: (bloc) async => bloc.add(
          const TaskEvent.loadMoreTaskItem(),
        ),
        expect: () => [
          TaskState.initial().copyWith(
            isFetching: true,
            authFailureOrSuccessOption: none(),
            taskList: <TaskEntity>[
              TaskEntity.empty().copyWith(
                id: '1',
                title: StringValue('Task 1'),
                description: StringValue('Task 1 description'),
                status: TaskStatus('To Do'),
              ),
              TaskEntity.empty().copyWith(
                id: '2',
                title: StringValue('Task 2'),
                description: StringValue('Task 2 description'),
                status: TaskStatus('Done'),
              ),
            ],
            canLoadMore: true,
          ),
          TaskState.initial().copyWith(
            isFetching: false,
            authFailureOrSuccessOption: none(),
            taskList: <TaskEntity>[
              TaskEntity.empty().copyWith(
                id: '1',
                title: StringValue('Task 1'),
                description: StringValue('Task 1 description'),
                status: TaskStatus('To Do'),
              ),
              TaskEntity.empty().copyWith(
                id: '2',
                title: StringValue('Task 2'),
                description: StringValue('Task 2 description'),
                status: TaskStatus('Done'),
              ),
              TaskEntity.empty().copyWith(
                id: '3',
                title: StringValue('Task 3'),
                description: StringValue('Task 3 description'),
                status: TaskStatus('To Do'),
              ),
              TaskEntity.empty().copyWith(
                id: '4',
                title: StringValue('Task 4'),
                description: StringValue('Task 4 description'),
                status: TaskStatus('Done'),
              ),
            ],
            searchKey: SearchKey(''),
            appliedFilter: TaskFilterEntity.empty(),
            canLoadMore: true,
          ),
        ],
      );
    },
  );
}
