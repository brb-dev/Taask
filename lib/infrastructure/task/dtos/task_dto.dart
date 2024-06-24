import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/task/entities/task_entity.dart';
import '../../../domain/task/value/value_objects.dart';

part 'task_dto.freezed.dart';
part 'task_dto.g.dart';

@freezed
class TaskDto with _$TaskDto {
  const TaskDto._();

  const factory TaskDto({
    @JsonKey(name: 'id', defaultValue: '') required String id,
    @JsonKey(name: 'uid', defaultValue: '') required String uid,
    @JsonKey(name: 'title', defaultValue: '') required String title,
    @JsonKey(name: 'description', defaultValue: '') required String description,
    @JsonKey(name: 'status', defaultValue: '') required String status,
  }) = _TaskDto;

  TaskEntity toDomain() {
    return TaskEntity(
      id: id,
      uid: uid,
      title: TaskTitle(title),
      description: TaskDescription(description),
      status: TaskStatus(status),
    );
  }

  factory TaskDto.fromDomain(
    TaskEntity task,
  ) {
    return TaskDto(
      id: task.id,
      uid: task.uid,
      title: task.title.getOrDefaultValue(''),
      description: task.description.getOrDefaultValue(''),
      status: task.status.getOrCrash(),
    );
  }

  factory TaskDto.fromFirebaseDocument(String id, Map<String, dynamic>? data) {
    return data != null
        ? TaskDto.fromJson(data).copyWith(id: id)
        : const TaskDto._();
  }

  factory TaskDto.fromJson(Map<String, dynamic> json) =>
      _$TaskDtoFromJson(json);
}
