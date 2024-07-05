import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:task/application/task/task_filter/task_filter_bloc.dart';
import 'package:task/domain/task/entities/task_filter_entity.dart';
import 'package:task/domain/task/value/value_objects.dart';

void main() {
  group(
    'Task Filter Bloc',
    () {
      blocTest<TaskFilterBloc, TaskFilterState>(
        'initialize',
        build: () => TaskFilterBloc(),
        act: (bloc) async => bloc.add(const TaskFilterEvent.initialize()),
        expect: () => [
          TaskFilterState.initial(),
        ],
      );
      blocTest<TaskFilterBloc, TaskFilterState>(
        'setTaskStatus add',
        build: () => TaskFilterBloc(),
        seed: () => TaskFilterState.initial().copyWith(
          statusList: <TaskStatus>[
            TaskStatus('Done'),
            TaskStatus('In Progress'),
            TaskStatus('To Do'),
          ],
        ),
        act: (bloc) async => bloc.add(
          TaskFilterEvent.setTaskStatus(
            status: TaskStatus('Done'),
            value: true,
          ),
        ),
        expect: () => [
          TaskFilterState.initial().copyWith(
            filter: TaskFilterEntity.empty().copyWith(
              statusList: <TaskStatus>[
                TaskStatus('Done'),
              ],
            ),
          ),
        ],
      );

      blocTest<TaskFilterBloc, TaskFilterState>(
        'setTaskStatus remove',
        build: () => TaskFilterBloc(),
        seed: () => TaskFilterState.initial().copyWith(
          filter: TaskFilterEntity.empty().copyWith(
            statusList: <TaskStatus>[
              TaskStatus('Done'),
              TaskStatus('In Progress'),
              TaskStatus('To Do'),
            ],
          ),
          statusList: <TaskStatus>[
            TaskStatus('Done'),
            TaskStatus('In Progress'),
            TaskStatus('To Do'),
          ],
        ),
        act: (bloc) async => bloc.add(
          TaskFilterEvent.setTaskStatus(
            status: TaskStatus('Done'),
            value: false,
          ),
        ),
        expect: () => [
          TaskFilterState.initial().copyWith(
            filter: TaskFilterEntity.empty().copyWith(
              statusList: <TaskStatus>[
                TaskStatus('In Progress'),
                TaskStatus('To Do'),
              ],
            ),
          ),
        ],
      );

      blocTest<TaskFilterBloc, TaskFilterState>(
        'resetFilter',
        build: () => TaskFilterBloc(),
        act: (bloc) async => bloc.add(
          const TaskFilterEvent.resetFilter(),
        ),
        expect: () => [
          TaskFilterState.initial().copyWith(
            filter: TaskFilterEntity.empty(),
          ),
        ],
      );
      blocTest<TaskFilterBloc, TaskFilterState>(
        'resetFiltersToLastApplied',
        build: () => TaskFilterBloc(),
        seed: () => TaskFilterState.initial().copyWith(
          filter: TaskFilterEntity.empty().copyWith(
            statusList: <TaskStatus>[
              TaskStatus('Done'),
              TaskStatus('In Progress'),
            ],
          ),
        ),
        act: (bloc) async => bloc.add(
          TaskFilterEvent.resetFiltersToLastApplied(
            lastAppliedFilter: TaskFilterEntity.empty().copyWith(
              statusList: <TaskStatus>[
                TaskStatus('Done'),
              ],
            ),
          ),
        ),
        expect: () => [
          TaskFilterState.initial().copyWith(
            filter: TaskFilterEntity.empty().copyWith(
              statusList: <TaskStatus>[
                TaskStatus('Done'),
              ],
            ),
          ),
        ],
      );
    },
  );
}
