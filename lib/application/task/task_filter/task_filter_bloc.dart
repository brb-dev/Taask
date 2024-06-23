import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/task/entities/task_filter_entity.dart';
import '../../../domain/task/value/value_objects.dart';

part 'task_filter_event.dart';
part 'task_filter_state.dart';
part 'task_filter_bloc.freezed.dart';

class TaskFilterBloc extends Bloc<TaskFilterEvent, TaskFilterState> {
  TaskFilterBloc() : super(TaskFilterState.initial()) {
    on<TaskFilterEvent>(_onEvent);
  }

  Future<void> _onEvent(
    TaskFilterEvent event,
    Emitter<TaskFilterState> emit,
  ) async {
    await event.map(
      initialize: (e) async => emit(
        TaskFilterState.initial(),
      ),
      setTaskStatus: (e) {
        final selectedStatusList = List<TaskStatus>.from(
          state.filter.statusList,
        );
        final modifiedStatusList = e.value
            ? (selectedStatusList..add(e.status))
            : (selectedStatusList..remove(e.status));
        emit(
          state.copyWith(
            filter: state.filter.copyWith(statusList: modifiedStatusList),
          ),
        );
      },
      resetFiltersToLastApplied: (e) async => emit(
        state.copyWith(
          filter: e.lastAppliedFilter,
        ),
      ),
      resetFilter: (e) async => emit(
        TaskFilterState.initial(),
      ),
    );
  }
}
