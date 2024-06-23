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
    @JsonKey(name: 'title', defaultValue: '') required String title,
    @JsonKey(name: 'description', defaultValue: '') required String description,
    @JsonKey(name: 'status', defaultValue: '') required String status,
  }) = _TaskDto;

  TaskEntity toDomain() {
    return TaskEntity(
      id: id,
      title: title,
      description: description,
      status: TaskStatus(status),
    );
  }

  factory TaskDto.fromDomain(
    TaskEntity task,
  ) {
    return TaskDto(
      id: task.id,
      title: task.title,
      description: task.description,
      status: task.status.getOrCrash(),
    );
  }

  factory TaskDto.fromFirebaseDocument(Map<String, dynamic>? data) {
    return data != null ? TaskDto.fromJson(data) : const TaskDto._();
  }

  factory TaskDto.fromJson(Map<String, dynamic> json) =>
      _$TaskDtoFromJson(json);
}
