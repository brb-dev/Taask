import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:task/domain/core/error/exception.dart';
import 'package:task/infrastructure/auth/dtos/uid_dto.dart';

import '../../../config.dart';
import '../../../domain/auth/entities/task_user.dart';
import '../../../domain/auth/value/value_objects.dart';
import '../../../domain/core/error/exception_handler.dart';
import '../../../domain/core/value/value_objects.dart';
import '../dtos/task_user_dto.dart';

const String userCollection = 'users';

const String uidCreationExceptionMessage = 'Firebase is not able to create UID';

class AuthRemoteDataSource {
  DataSourceExceptionHandler dataSourceExceptionHandler;
  Config config;

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  AuthRemoteDataSource({
    required this.dataSourceExceptionHandler,
    required this.config,
  });

  Future<UID> registerWithEmailAndPassword({
    required TaskUser user,
  }) async {
    return await dataSourceExceptionHandler.handle(() async {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: user.email.getOrCrash(),
        password: user.password,
      );

      return UIDDto(uid: userCredential.user?.uid ?? '').toDomain();
    });
  }

  Future<TaskUser> fetchUser({required UID uid}) async {
    return await dataSourceExceptionHandler.handle(() async {
      final DocumentReference<Map<String, dynamic>> documentReference =
          _firestore.collection(userCollection).doc(uid.getOrCrash());

      final document = await documentReference.get();

      return TaskUserDto.fromFirebaseDocument(document.id, document.data())
          .toDomain();
    });
  }

  Future<UID> loginWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    return await dataSourceExceptionHandler.handle(() async {
      final userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      return UIDDto(uid: userCredential.user?.uid ?? '').toDomain();
    });
  }

  Future<Unit> addUserToFirestore({
    required UID uid,
    required TaskUser user,
  }) async {
    return await dataSourceExceptionHandler.handle(() async {
      final Map<String, dynamic> json = TaskUserDto.fromDomain(user).toJson();
      final DocumentReference<Map<String, dynamic>> documentReference =
          _firestore.collection(userCollection).doc(uid.getOrCrash());
      await documentReference.set(json);
      return unit;
    });
  }

  Future<Stream<User?>> isUserLogged() async {
    return await dataSourceExceptionHandler.handle(() async {
      return _auth.authStateChanges();
    });
  }

  Future<Unit> logout() async {
    return await dataSourceExceptionHandler.handle(() async {
      await _auth.signOut();
      return unit;
    });
  }

  Future<Unit> sendResetPasswordEmailLink({required EmailAddress email}) async {
    return await dataSourceExceptionHandler.handle(() async {
      await _auth.sendPasswordResetEmail(email: email.getOrCrash());
      return unit;
    });
  }
}
