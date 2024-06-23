import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../config.dart';
import '../../domain/auth/entities/task_user.dart';
import '../../domain/core/error/api_failure.dart';
import '../../domain/core/value/value_objects.dart';
import '../../domain/task/entities/task_entity.dart';
import '../../domain/task/entities/task_filter_entity.dart';
import '../../domain/task/repositories/i_task_repository.dart';

part 'task_bloc.freezed.dart';
part 'task_event.dart';
part 'task_state.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  final ITaskRepository repository;
  final Config config;

  TaskBloc({
    required this.repository,
    required this.config,
  }) : super(TaskState.initial()) {
    on<TaskEvent>(_onEvent);
  }

  Future<void> _onEvent(TaskEvent event, Emitter<TaskState> emit) async {
    await event.map(
      init: (e) async {
        emit(TaskState.initial());
        add(
          TaskEvent.fetchTaskList(
            searchKey: SearchKey.search(''),
            filter: TaskFilterEntity.empty(),
          ),
        );
      },
      fetchTaskList: (e) async {
        if ((e.searchKey == state.searchKey && e.searchKey.validateNotEmpty) ||
            !e.searchKey.isValid()) return;

        emit(
          state.copyWith(
            isFetching: true,
            authFailureOrSuccessOption: none(),
            taskList: <TaskEntity>[],
            searchKey: e.searchKey,
            appliedFilter: e.filter,
          ),
        );

        final successOrFailure = await repository.fetchTaskItems(
          user: TaskUser.empty(),
          searchKey: e.searchKey,
          appliedFilter: e.filter,
          pageSize: config.pageSize,
          offSet: 0,
        );

        successOrFailure.fold(
          (failure) {
            emit(
              state.copyWith(
                authFailureOrSuccessOption: optionOf(successOrFailure),
                isFetching: false,
              ),
            );
          },
          (taskList) {
            emit(
              state.copyWith(
                taskList: taskList,
                isFetching: false,
                canLoadMore: taskList.length >= config.pageSize,
              ),
            );
          },
        );
      },
      loadMoreTaskItem: (e) async {
        if (state.isFetching || !state.canLoadMore) return;
        emit(
          state.copyWith(
            isFetching: true,
            authFailureOrSuccessOption: none(),
          ),
        );

        final failureOrSuccessOption = await repository.fetchTaskItems(
          user: TaskUser.empty(),
          searchKey: state.searchKey,
          appliedFilter: state.appliedFilter,
          pageSize: config.pageSize,
          offSet: state.taskList.length,
        );

        failureOrSuccessOption.fold(
          (failure) {
            if (emit.isDone) return;
            emit(
              state.copyWith(
                authFailureOrSuccessOption: optionOf(failureOrSuccessOption),
                canLoadMore: false,
                isFetching: false,
              ),
            );
          },
          (taskList) {
            if (emit.isDone) return;
            emit(
              state.copyWith(
                taskList: List<TaskEntity>.from(state.taskList)
                  ..addAll(taskList),
                authFailureOrSuccessOption: none(),
                isFetching: false,
                canLoadMore: taskList.length >= config.pageSize,
              ),
            );
          },
        );
      },
    );
  }
}
