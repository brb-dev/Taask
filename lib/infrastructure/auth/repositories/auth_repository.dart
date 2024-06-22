import 'package:dartz/dartz.dart';

import 'package:firebase_auth/firebase_auth.dart';

import '../../../config.dart';
import '../../../domain/auth/entities/task_user.dart';
import '../../../domain/auth/repositories/i_auth_repository.dart';
import '../../../domain/auth/value/value_objects.dart';
import '../../../domain/core/error/api_failure.dart';
import '../../../domain/core/error/failure_handler.dart';
import '../datasources/auth_local.dart';
import '../datasources/auth_remote.dart';

class AuthRepository implements IAuthRepository {
  final Config config;
  final AuthRemoteDataSource remoteDataSource;
  final AuthLocalDataSource localDataSource;

  AuthRepository({
    required this.config,
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<Either<ApiFailure, Stream<User?>>> isUserLoggedIn() async {
    try {
      final isAuthStateChanged = await remoteDataSource.isUserLogged();

      return Right(isAuthStateChanged);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, TaskUser>> loginWithEmailAndPassword(
      {required EmailAddress email, required Password password}) async {
    if (config.appFlavor == Flavor.mock) {
      try {
        final login = await localDataSource.loginWithEmailAndPassword();

        return Right(login);
      } catch (e) {
        return Left(FailureHandler.handleFailure(e));
      }
    }
    try {
      final login = await remoteDataSource.loginWithEmailAndPassword(
        email: email.getOrCrash(),
        password: password.getOrCrash(),
      );

      return Right(login);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> logout() async {
    try {
      final unit = await remoteDataSource.logout();

      return Right(unit);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, TaskUser>> registerWithEmailAndPassword(
      {required TaskUser user}) async {
    if (config.appFlavor == Flavor.mock) {
      try {
        final login = await localDataSource.registerWithEmailAndPassword();

        return Right(login);
      } catch (e) {
        return Left(FailureHandler.handleFailure(e));
      }
    }
    try {
      final login =
          await remoteDataSource.registerWithEmailAndPassword(user: user);

      return Right(login);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> sendResetPasswordEmail(
      {required EmailAddress email}) async {
    if (config.appFlavor == Flavor.mock) {
      /*try {
        final login = await localDataSource.registerWithEmailAndPassword();

        return Right(login);
      } catch (e) {
        return Left(FailureHandler.handleFailure(e));
      }*/
    }
    try {
      final login =
          await remoteDataSource.sendResetPasswordEmailLink(email: email);

      return Right(login);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }
}
