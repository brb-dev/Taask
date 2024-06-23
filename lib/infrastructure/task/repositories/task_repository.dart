import 'package:dartz/dartz.dart';

import '../../../config.dart';
import '../../../domain/auth/entities/task_user.dart';
import '../../../domain/core/error/api_failure.dart';
import '../../../domain/core/error/failure_handler.dart';
import '../../../domain/core/value/value_objects.dart';
import '../../../domain/task/entities/task_entity.dart';
import '../../../domain/task/entities/task_filter_entity.dart';
import '../../../domain/task/repositories/i_task_repository.dart';
import '../datasources/task_local.dart';
import '../datasources/task_remote.dart';

class TaskRepository implements ITaskRepository {
  final Config config;
  final TaskRemoteDataSource remoteDataSource;
  final TaskLocalDataSource localDataSource;

  TaskRepository({
    required this.config,
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<Either<ApiFailure, List<TaskEntity>>> fetchTaskItems({
    required TaskUser user,
    required SearchKey searchKey,
    required TaskFilterEntity appliedFilter,
    required int pageSize,
    required int offSet,
  }) async {
    if (config.appFlavor == Flavor.mock) {
      try {
        final taskList = await localDataSource.fetchTaskList(
          pageSize: pageSize,
          offSet: offSet,
        );

        return Right(taskList);
      } catch (e) {
        return Left(FailureHandler.handleFailure(e));
      }
    }
    try {
      final taskList = await remoteDataSource.fetchTaskList(
        searchKey: searchKey.getOrDefaultValue(''),
        appliedFilter: appliedFilter,
        pageSize: pageSize,
        offSet: offSet,
      );

      return Right(taskList);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }
}
