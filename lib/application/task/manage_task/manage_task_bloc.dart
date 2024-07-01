import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task/domain/task/repositories/i_task_repository.dart';
import 'package:task/domain/task/value/value_objects.dart';

import '../../../domain/core/error/api_failure.dart';
import '../../../domain/task/entities/task_entity.dart';

part 'manage_task_event.dart';
part 'manage_task_state.dart';
part 'manage_task_bloc.freezed.dart';

class ManageTaskBloc extends Bloc<ManageTaskEvent, ManageTaskState> {
  final ITaskRepository repository;

  ManageTaskBloc({required this.repository})
      : super(ManageTaskState.initial()) {
    on<ManageTaskEvent>(_onEvent);
  }

  Future<void> _onEvent(
    ManageTaskEvent event,
    Emitter<ManageTaskState> emit,
  ) async {
    await event.map(
      init: (e) async => emit(
        ManageTaskState.initial(),
      ),
      addOrEditTask: (e) async {
        emit(
          state.copyWith(
            showErrorMessages: false,
          ),
        );

        if (state.task.isValid) {
          emit(
            state.copyWith(
              isSubmitting: true,
              isSuccess: false,
              failureOrSuccessOption: none(),
            ),
          );

          final failureOrSuccess = await repository.addOrEditTask(
            task: state.task,
          );

          failureOrSuccess.fold(
            (failure) {
              emit(
                state.copyWith(
                  isSubmitting: false,
                  failureOrSuccessOption: optionOf(failureOrSuccess),
                ),
              );
            },
            (success) {
              emit(
                state.copyWith(
                  isSuccess: true,
                  isSubmitting: false,
                ),
              );
            },
          );
        } else {
          emit(
            state.copyWith(showErrorMessages: true),
          );
        }
      },
      setTaskData: (e) async {
        emit(
          state.copyWith(
            task: e.data,
          ),
        );
      },
      deleteTask: (e) async {
        emit(
          state.copyWith(
            isDeleting: true,
            failureOrSuccessOption: none(),
          ),
        );

        final failureOrSuccess = await repository.deleteTask(task: e.data);
        failureOrSuccess.fold(
          (failure) {
            emit(
              state.copyWith(
                isDeleting: false,
                failureOrSuccessOption: optionOf(failureOrSuccess),
              ),
            );
          },
          (success) {
            emit(
              state.copyWith(
                isDeleting: false,
              ),
            );
          },
        );
      },
      onValueChange: (e) async => onValueChange(
        label: e.label,
        newValue: e.newValue,
        emit: emit,
      ),
    );
  }

  void onValueChange({
    required TaskLebel label,
    required String newValue,
    required Emitter<ManageTaskState> emit,
  }) {
    switch (label) {
      case TaskLebel.status:
        _emitAfterOnTextChange(
          emit: emit,
          taskData: state.task.copyWith(
            status: TaskStatus(newValue),
          ),
        );
        break;
      case TaskLebel.title:
        _emitAfterOnTextChange(
          emit: emit,
          taskData: state.task.copyWith(
            title: TaskTitle(newValue),
          ),
        );
        break;
      case TaskLebel.description:
        _emitAfterOnTextChange(
          emit: emit,
          taskData: state.task.copyWith(
            description: TaskDescription(newValue),
          ),
        );
        break;
    }
  }

  void _emitAfterOnTextChange({
    required Emitter<ManageTaskState> emit,
    required TaskEntity taskData,
  }) {
    emit(
      state.copyWith(
        task: taskData,
      ),
    );
  }
}
