import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import '../../../config.dart';
import '../../../domain/core/error/exception_handler.dart';
import '../../../domain/task/entities/task_entity.dart';
import '../../../domain/task/entities/task_filter_entity.dart';
import '../dtos/task_dto.dart';

const String userCollection = 'tasks';

class TaskRemoteDataSource {
  DataSourceExceptionHandler dataSourceExceptionHandler;
  Config config;

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  TaskRemoteDataSource({
    required this.dataSourceExceptionHandler,
    required this.config,
  });

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
                  item.title.contains(searchKey) ||
                  item.description.contains(searchKey),
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
