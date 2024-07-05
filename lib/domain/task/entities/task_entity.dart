import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task/domain/core/value/value_objects.dart';

import '../value/value_objects.dart';

part 'task_entity.freezed.dart';

@freezed
class TaskEntity with _$TaskEntity {
  const TaskEntity._();

  const factory TaskEntity({
    required String id,
    required UID uid,
    required StringValue title,
    required StringValue description,
    required TaskStatus status,
    required bool isDeleteInProgress,
  }) = _TaskEntity;

  factory TaskEntity.empty() => TaskEntity(
        id: '',
        uid: UID(''),
        title: StringValue(''),
        description: StringValue(''),
        status: TaskStatus(''),
        isDeleteInProgress: false,
      );

  bool get isValid =>
      uid.getOrDefaultValue('').isNotEmpty &&
      title.isValid() &&
      description.isValid() &&
      status.isValid();
}
