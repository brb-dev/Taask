part of 'manage_task_bloc.dart';

@freezed
class ManageTaskEvent with _$ManageTaskEvent {
  const factory ManageTaskEvent.init() = _Init;
  const factory ManageTaskEvent.addOrEditTask() = _AddOrEditTask;
  const factory ManageTaskEvent.deleteTask({
    required TaskEntity data,
  }) = _DeleteTask;
  const factory ManageTaskEvent.setTaskData({
    required TaskEntity data,
  }) = _SetTaskData;
  const factory ManageTaskEvent.onValueChange({
    required TaskLebel label,
    required String newValue,
  }) = _OnValueChange;
}

enum TaskLebel {
  status,
  title,
  description,
}
