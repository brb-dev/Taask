part of 'task_filter_bloc.dart';

@freezed
class TaskFilterEvent with _$TaskFilterEvent {
  const factory TaskFilterEvent.initialize() = _Initialized;
  const factory TaskFilterEvent.resetFiltersToLastApplied({
    required TaskFilterEntity lastAppliedFilter,
  }) = _ResetFiltersToLastApplied;
  const factory TaskFilterEvent.setTaskStatus({
    required TaskStatus status,
    required bool value,
  }) = _SetTaskStatus;
  const factory TaskFilterEvent.resetFilter() = _ResetFilter;
}
