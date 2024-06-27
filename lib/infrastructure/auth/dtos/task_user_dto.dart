import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task/domain/auth/value/value_objects.dart';

import '../../../domain/auth/entities/task_user.dart';

part 'task_user_dto.freezed.dart';
part 'task_user_dto.g.dart';

@freezed
class TaskUserDto with _$TaskUserDto {
  const TaskUserDto._();

  const factory TaskUserDto({
    @JsonKey(
      name: 'uid',
      defaultValue: '',
      includeToJson: false,
    )
    required String uid,
    @JsonKey(name: 'name', defaultValue: '') required String name,
    @JsonKey(name: 'userName', defaultValue: '') required String userName,
    @JsonKey(name: 'password', defaultValue: '', toJson: hidePassword)
    required String password,
    @JsonKey(name: 'gender', defaultValue: '') required String gender,
    @JsonKey(name: 'dob', defaultValue: '') required String dob,
    @JsonKey(name: 'email', defaultValue: '') required String email,
    @JsonKey(name: 'displayName', defaultValue: '') required String displayName,
    @JsonKey(name: 'profilePicUrl', defaultValue: '')
    required String profilePicUrl,
  }) = _TaskUserDto;

  TaskUser toDomain() {
    return TaskUser(
      uid: uid,
      userName: userName,
      fullName: name,
      gender: gender,
      dob: dob,
      password: password,
      email: EmailAddress(email),
      displayName: displayName,
      profilePicUrl: profilePicUrl,
    );
  }

  factory TaskUserDto.fromDomain(
    TaskUser user,
  ) {
    return TaskUserDto(
      uid: user.uid,
      userName: user.userName,
      password: user.password,
      name: user.fullName,
      dob: user.dob,
      gender: user.gender,
      email: user.email.getOrCrash(),
      displayName: user.displayName,
      profilePicUrl: user.profilePicUrl,
    );
  }

  factory TaskUserDto.fromFirebaseDocument(
      String uid, Map<String, dynamic>? data) {
    return data != null
        ? TaskUserDto.fromJson(data).copyWith(uid: uid)
        : const TaskUserDto._();
  }

  factory TaskUserDto.fromJson(Map<String, dynamic> json) =>
      _$TaskUserDtoFromJson(json);
}

dynamic hidePassword(String value) => null;
