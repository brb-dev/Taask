import 'dart:convert';

import 'package:flutter/services.dart';

import '../../../domain/auth/entities/task_user.dart';
import '../dtos/task_user_dto.dart';

class AuthLocalDataSource {
  Future<TaskUser> registerWithEmailAndPassword() async {
    await Future.delayed(const Duration(seconds: 3));
    final data = json.decode(
      await rootBundle.loadString('assets/response/register_response.json'),
    );

    return TaskUserDto.fromJson(data).toDomain();
  }

  Future<TaskUser> loginWithEmailAndPassword() async {
    await Future.delayed(const Duration(seconds: 3));
    final data = json.decode(
      await rootBundle.loadString('assets/response/login_response.json'),
    );

    return TaskUserDto.fromJson(data).toDomain();
  }

  Stream<TaskUser> isUserLogged() async* {
    await Future.delayed(const Duration(seconds: 3));
    final data = json.decode(
      await rootBundle.loadString('assets/response/user_response.json'),
    );

    yield TaskUserDto.fromJson(data).toDomain();
  }

  Future<TaskUser> fetchUser() async {
    await Future.delayed(const Duration(seconds: 3));
    final data = json.decode(
      await rootBundle.loadString('assets/response/user_response.json'),
    );

    return TaskUserDto.fromJson(data).toDomain();
  }
}
