part of 'task_bloc.dart';

@freezed
class TaskState with _$TaskState {
  const TaskState._();

  const factory TaskState({
    required List<TaskEntity> taskList,
    required bool isFetching,
    required bool canLoadMore,
    required SearchKey searchKey,
    required TaskFilterEntity appliedFilter,
    required Option<Either<ApiFailure, dynamic>> authFailureOrSuccessOption,
  }) = _TaskState;

  factory TaskState.initial() => TaskState(
        taskList: <TaskEntity>[],
        isFetching: false,
        canLoadMore: false,
        searchKey: SearchKey(''),
        appliedFilter: TaskFilterEntity.empty(),
        authFailureOrSuccessOption: none(),
      );
}
