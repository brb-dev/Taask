import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';

import '../../../domain/task/entities/task_entity.dart';
import '../../../domain/task/entities/task_filter_entity.dart';
import '../dtos/task_dto.dart';

class TaskLocalDataSource {
  Future<Unit> addOrEditTask({
    required TaskEntity task,
  }) async {
    Future.delayed(
      const Duration(seconds: 3),
    );
    final taskList = await fetchTaskList(
      searchKey: '',
      appliedFilter: TaskFilterEntity.empty(),
      pageSize: 24,
      offSet: 0,
    );

    final isPresent = taskList.any(
      (element) => element.id == task.id,
    );
    if (isPresent) {
      taskList.removeWhere(
        (element) => element.id == task.id,
      );
      taskList.add(task);
    } else {
      taskList.add(task);
    }

    return unit;
  }

  Future<Unit> deleteTask({
    required TaskEntity task,
  }) async {
    Future.delayed(
      const Duration(seconds: 3),
    );
    final taskList = await fetchTaskList(
      searchKey: '',
      appliedFilter: TaskFilterEntity.empty(),
      pageSize: 24,
      offSet: 0,
    );

    final isPresent = taskList.any(
      (element) => element.id == task.id,
    );
    if (isPresent) {
      taskList.removeWhere(
        (element) => element.id == task.id,
      );
    } else {}

    return unit;
  }

  Future<List<TaskEntity>> fetchTaskList({
    required String searchKey,
    required TaskFilterEntity appliedFilter,
    required int pageSize,
    required int offSet,
  }) async {
    await Future.delayed(const Duration(seconds: 3));
    final data = json.decode(
      await rootBundle.loadString('assets/response/task_list_response.json'),
    );

    final wholeList = (data['data'] as List<dynamic>)
        .map((e) => TaskDto.fromJson(e as Map<String, dynamic>).toDomain())
        .toList();
    final listBasedOnSearch = searchKey.isNotEmpty
        ? wholeList
            .where(
              (item) =>
                  item.title.getOrCrash().contains(searchKey) ||
                  item.description.getOrCrash().contains(searchKey),
            )
            .toList()
        : wholeList;

    final finalList = appliedFilter.statusList.isNotEmpty
        ? listBasedOnSearch
            .where(
              (item) => appliedFilter.statusList.contains(item.status),
            )
            .toList()
        : listBasedOnSearch;

    final endIndex = finalList.length >= (offSet + pageSize)
        ? (offSet + pageSize)
        : finalList.length;

    return finalList.sublist(offSet, endIndex);
  }
}
