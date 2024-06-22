import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../config.dart';
import '../../../domain/auth/entities/task_user.dart';
import '../../../domain/auth/value/value_objects.dart';
import '../../../domain/core/error/exception_handler.dart';
import '../dtos/task_user_dto.dart';

const String userCollection = 'users';

class AuthRemoteDataSource {
  DataSourceExceptionHandler dataSourceExceptionHandler;
  Config config;

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  AuthRemoteDataSource({
    required this.dataSourceExceptionHandler,
    required this.config,
  });

  Future<TaskUser> registerWithEmailAndPassword({
    required TaskUser user,
  }) async {
    return await dataSourceExceptionHandler.handle(() async {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: user.email,
        password: user.password,
      );

      final String uid = userCredential.user?.uid ?? '';

      //create user document.
      final Map<String, dynamic> json = TaskUserDto.fromDomain(user).toJson();
      final DocumentReference<Map<String, dynamic>> documentReference =
          _firestore.collection(userCollection).doc(uid);
      await documentReference.set(json);

      final DocumentSnapshot<Map<String, dynamic>> dataMap =
          await documentReference.get();
      return TaskUserDto.fromFirebaseDocument(uid, dataMap.data()).toDomain();
    });
  }

  Future<TaskUser> loginWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    return await dataSourceExceptionHandler.handle(() async {
      final userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      final String uid = userCredential.user?.uid ?? '';

      final DocumentReference<Map<String, dynamic>> documentReference =
          _firestore.collection(userCollection).doc(uid);

      final documentSnapshot = await documentReference.get();

      final data = documentSnapshot.data() ?? {};

      return TaskUserDto.fromJson(data).toDomain();
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
