part of 'manage_task_bloc.dart';

@freezed
class ManageTaskState with _$ManageTaskState {
  const ManageTaskState._();

  const factory ManageTaskState({
    required TaskEntity task,
    required bool isSubmitting,
    required bool showErrorMessages,
    required bool isSuccess,
    required Option<Either<ApiFailure, dynamic>> failureOrSuccessOption,
  }) = _ManageTaskState;

  factory ManageTaskState.initial() => ManageTaskState(
        task: TaskEntity.empty(),
        isSubmitting: false,
        isSuccess: false,
        showErrorMessages: false,
        failureOrSuccessOption: none(),
      );
}
