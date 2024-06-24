import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:task/domain/auth/entities/task_user.dart';
import '../../../config.dart';
import '../../../domain/core/error/exception_handler.dart';
import '../../../domain/task/entities/task_entity.dart';
import '../../../domain/task/entities/task_filter_entity.dart';
import '../dtos/task_dto.dart';

const String taskCollection = 'tasks';

class TaskRemoteDataSource {
  DataSourceExceptionHandler dataSourceExceptionHandler;
  Config config;

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  TaskRemoteDataSource({
    required this.dataSourceExceptionHandler,
    required this.config,
  });

  Future<Unit> addOrEditTask({
    required TaskEntity task,
  }) async {
    if (task.id.isEmpty) {
      final collectionRef =
          FirebaseFirestore.instance.collection(taskCollection);
      await collectionRef.add(TaskDto.fromDomain(task).toJson());
      return unit;
    } else {
      final docRef =
          FirebaseFirestore.instance.collection(taskCollection).doc(task.id);
      final setOptions = SetOptions(merge: true);
      await docRef.set(TaskDto.fromDomain(task).toJson(), setOptions);
      return unit;
    }
  }

  Future<Unit> deleteTask({
    required TaskEntity task,
  }) async {
    final docRef =
        FirebaseFirestore.instance.collection(taskCollection).doc(task.id);
    await docRef.delete();
    return unit;
  }

  Future<List<TaskEntity>> fetchTaskList({
    required String searchKey,
    required TaskUser user,
    required TaskFilterEntity appliedFilter,
    required int pageSize,
    required int offSet,
  }) async {
    final collection = _firestore
        .collection(taskCollection)
        .where('uid', isEqualTo: user.uid)
        .limit(pageSize);

    late QuerySnapshot<Map<String, dynamic>> querySnap;
    if (appliedFilter != TaskFilterEntity.empty()) {
      querySnap = await collection
          .where('status', whereIn: appliedFilter.statusListInString)
          .get();
    } else {
      querySnap = await collection.get();
    }

    final fetchedData = querySnap.docs
        .map((doc) => <String, Map<String, dynamic>>{doc.id: doc.data()})
        .toList();

    final fetchTaskData = fetchedData
        .map(
          (e) => TaskDto.fromFirebaseDocument(e.keys.first, e.values.first)
              .toDomain(),
        )
        .toList();

    if (searchKey.isEmpty) return fetchTaskData;
    return fetchTaskData
        .where(
          (element) =>
              element.title.getOrCrash().contains(searchKey) ||
              element.description.getOrCrash().contains(searchKey),
        )
        .toList();
  }
}
