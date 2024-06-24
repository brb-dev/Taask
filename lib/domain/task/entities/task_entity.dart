import 'package:freezed_annotation/freezed_annotation.dart';

import '../value/value_objects.dart';

part 'task_entity.freezed.dart';

@freezed
class TaskEntity with _$TaskEntity {
  const TaskEntity._();

  const factory TaskEntity({
    required String id,
    required String uid,
    required TaskTitle title,
    required TaskDescription description,
    required TaskStatus status,
  }) = _TaskEntity;

  factory TaskEntity.empty() => TaskEntity(
        id: '',
        uid: '',
        title: TaskTitle(''),
        description: TaskDescription(''),
        status: TaskStatus(''),
      );

  bool get isValid =>
      uid.isNotEmpty &&
      title.isValid() &&
      description.isValid() &&
      status.isValid();
}
