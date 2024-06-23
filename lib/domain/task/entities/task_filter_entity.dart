import 'package:freezed_annotation/freezed_annotation.dart';

import '../value/value_objects.dart';

part 'task_filter_entity.freezed.dart';

@freezed
class TaskFilterEntity with _$TaskFilterEntity {
  const TaskFilterEntity._();

  const factory TaskFilterEntity({
    required List<TaskStatus> statusList,
  }) = _TaskFilterEntity;

  factory TaskFilterEntity.empty() => const TaskFilterEntity(
        statusList: <TaskStatus>[],
      );
}
