// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskUserDtoImpl _$$TaskUserDtoImplFromJson(Map<String, dynamic> json) =>
    _$TaskUserDtoImpl(
      uid: json['uid'] as String? ?? '',
      userName: json['userName'] as String? ?? '',
      password: json['password'] as String? ?? '',
      email: json['email'] as String? ?? '',
      displayName: json['displayName'] as String? ?? '',
      profilePicUrl: json['profilePicUrl'] as String? ?? '',
    );

Map<String, dynamic> _$$TaskUserDtoImplToJson(_$TaskUserDtoImpl instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'password': hidePassword(instance.password),
      'email': instance.email,
      'displayName': instance.displayName,
      'profilePicUrl': instance.profilePicUrl,
    };
