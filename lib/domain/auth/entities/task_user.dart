import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task/domain/auth/value/value_objects.dart';

part 'task_user.freezed.dart';

@freezed
class TaskUser with _$TaskUser {
  const TaskUser._();

  const factory TaskUser({
    required String uid,
    required String userName,
    required String fullName,
    required String gender,
    required String dob,
    required String password,
    required EmailAddress email,
    required String displayName,
    required String profilePicUrl,
  }) = _TaskUser;

  factory TaskUser.empty() => TaskUser(
        uid: '',
        userName: '',
        fullName: '',
        gender: '',
        dob: '',
        password: '',
        email: EmailAddress(''),
        displayName: '',
        profilePicUrl: '',
      );
}
