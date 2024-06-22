import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../core/error/api_failure.dart';
import '../entities/task_user.dart';
import '../value/value_objects.dart';

abstract class IAuthRepository {
  Future<Either<ApiFailure, TaskUser>> registerWithEmailAndPassword({
    required TaskUser user,
  });
  Future<Either<ApiFailure, TaskUser>> loginWithEmailAndPassword({
    required EmailAddress email,
    required Password password,
  });
  Future<Either<ApiFailure, Unit>> logout();

  Future<Either<ApiFailure, Stream<User?>>> isUserLoggedIn();

  Future<Either<ApiFailure, Unit>> sendResetPasswordEmail(
      {required EmailAddress email});
}
