import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_user.freezed.dart';

@freezed
class TaskUser with _$TaskUser {
  const TaskUser._();

  const factory TaskUser({
    required String uid,
    required String userName,
    required String password,
    required String email,
    required String displayName,
    required String profilePicUrl,
  }) = _TaskUser;

  factory TaskUser.empty() => const TaskUser(
        uid: '',
        userName: '',
        password: '',
        email: '',
        displayName: '',
        profilePicUrl: '',
      );
}
