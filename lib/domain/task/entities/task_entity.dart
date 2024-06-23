import 'package:freezed_annotation/freezed_annotation.dart';

import '../value/value_objects.dart';

part 'task_entity.freezed.dart';

@freezed
class TaskEntity with _$TaskEntity {
  const TaskEntity._();

  const factory TaskEntity({
    required String id,
    required String title,
    required String description,
    required TaskStatus status,
  }) = _TaskEntity;

  factory TaskEntity.empty() => TaskEntity(
        id: '',
        title: '',
        description: '',
        status: TaskStatus(''),
      );
}
