part of 'task_filter_bloc.dart';

@freezed
class TaskFilterState with _$TaskFilterState {
  const TaskFilterState._();

  const factory TaskFilterState({
    required TaskFilterEntity filter,
    required List<TaskStatus> statusList,
  }) = _TaskFilterState;

  factory TaskFilterState.initial() => TaskFilterState(
        filter: TaskFilterEntity.empty(),
        statusList: <TaskStatus>[
          TaskStatus('Done'),
          TaskStatus('In Progress'),
          TaskStatus('To Do'),
        ],
      );
}
