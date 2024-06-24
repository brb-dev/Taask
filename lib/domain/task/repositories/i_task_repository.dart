import 'package:dartz/dartz.dart';

import '../../auth/entities/task_user.dart';
import '../../core/error/api_failure.dart';
import '../../core/value/value_objects.dart';
import '../entities/task_entity.dart';
import '../entities/task_filter_entity.dart';

abstract class ITaskRepository {
  Future<Either<ApiFailure, List<TaskEntity>>> fetchTaskItems({
    required TaskUser user,
    required SearchKey searchKey,
    required TaskFilterEntity appliedFilter,
    required int pageSize,
    required int offSet,
  });

  Future<Either<ApiFailure, Unit>> addOrEditTask({
    required TaskEntity task,
  });
  Future<Either<ApiFailure, Unit>> deleteTask({
    required TaskEntity task,
  });
}
