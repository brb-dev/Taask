import 'dart:convert';

import 'package:flutter/services.dart';

import '../../../domain/task/entities/task_entity.dart';
import '../dtos/task_dto.dart';

class TaskLocalDataSource {
  Future<List<TaskEntity>> fetchTaskList({
    required int pageSize,
    required int offSet,
  }) async {
    await Future.delayed(const Duration(seconds: 3));
    final data = json.decode(
      await rootBundle.loadString('assets/response/register_response.json'),
    );

    final wholeList = (data['data'] as List<dynamic>)
        .map((e) => TaskDto.fromJson(e as Map<String, dynamic>).toDomain())
        .toList();

    final endIndex = wholeList.length >= (offSet + pageSize)
        ? (offSet + pageSize)
        : wholeList.length;

    return wholeList.sublist(offSet, endIndex);
  }
}
