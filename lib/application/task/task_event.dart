part of 'task_bloc.dart';

@freezed
class TaskEvent with _$TaskEvent {
  const factory TaskEvent.init() = _Init;
  const factory TaskEvent.fetchTaskList({
    required TaskUser user,
    required TaskFilterEntity filter,
    required SearchKey searchKey,
  }) = _FetchTaskList;
  const factory TaskEvent.loadMoreTaskItem() = _LoadMoreTaskItem;
}
