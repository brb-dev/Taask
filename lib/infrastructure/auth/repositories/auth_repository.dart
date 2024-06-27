import 'package:dartz/dartz.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:task/infrastructure/auth/dtos/uid_dto.dart';

import '../../../config.dart';
import '../../../domain/auth/entities/task_user.dart';
import '../../../domain/auth/repositories/i_auth_repository.dart';
import '../../../domain/auth/value/value_objects.dart';
import '../../../domain/core/error/api_failure.dart';
import '../../../domain/core/error/failure_handler.dart';
import '../../../domain/core/value/value_objects.dart';
import '../../core/local_storage/uid_storage.dart';
import '../datasources/auth_local.dart';
import '../datasources/auth_remote.dart';

class AuthRepository implements IAuthRepository {
  final Config config;
  final AuthRemoteDataSource remoteDataSource;
  final AuthLocalDataSource localDataSource;
  final UidStorage uidStorage;

  AuthRepository({
    required this.config,
    required this.remoteDataSource,
    required this.localDataSource,
    required this.uidStorage,
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
  Future<Either<ApiFailure, Unit>> loginWithEmailAndPassword(
      {required EmailAddress email, required Password password}) async {
    if (config.appFlavor == Flavor.mock) {
      /*try {
        final unit = await localDataSource.loginWithEmailAndPassword();

        return Right(login);
      } catch (e) {
        return Left(FailureHandler.handleFailure(e));
      }*/
    }
    try {
      final uid = await remoteDataSource.loginWithEmailAndPassword(
        email: email.getOrCrash(),
        password: password.getOrCrash(),
      );

      await uidStorage.set(UIDDto.fromDomain(uid));

      return const Right(unit);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> logout() async {
    try {
      await remoteDataSource.logout();
      await uidStorage.clear();
      return const Right(unit);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> registerWithEmailAndPassword(
      {required TaskUser user}) async {
    if (config.appFlavor == Flavor.mock) {
      /*try {
        final login = await localDataSource.registerWithEmailAndPassword();

        return Right(login);
      } catch (e) {
        return Left(FailureHandler.handleFailure(e));
      }*/
    }
    try {
      final uid =
          await remoteDataSource.registerWithEmailAndPassword(user: user);
      await remoteDataSource.addUserToFirestore(uid: uid, user: user);
      await uidStorage.set(UIDDto.fromDomain(uid));
      return const Right(unit);
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

  @override
  Future<Either<ApiFailure, TaskUser>> fetchUser() async {
    if (config.appFlavor == Flavor.mock) {
      try {
        final user = await localDataSource.fetchUser();

        return Right(user);
      } catch (e) {
        return Left(FailureHandler.handleFailure(e));
      }
    }
    try {
      final uid = await uidStorage.get();
      final user = await remoteDataSource.fetchUser(uid: uid.toDomain());

      return Right(user);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> storeUID({required UID uid}) async {
    try {
      await uidStorage.set(UIDDto.fromDomain(uid));

      return const Right(unit);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }
}
