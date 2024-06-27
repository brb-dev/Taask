// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskUserDtoImpl _$$TaskUserDtoImplFromJson(Map<String, dynamic> json) =>
    _$TaskUserDtoImpl(
      uid: json['uid'] as String? ?? '',
      name: json['name'] as String? ?? '',
      userName: json['userName'] as String? ?? '',
      password: json['password'] as String? ?? '',
      gender: json['gender'] as String? ?? '',
      dob: json['dob'] as String? ?? '',
      email: json['email'] as String? ?? '',
      displayName: json['displayName'] as String? ?? '',
      profilePicUrl: json['profilePicUrl'] as String? ?? '',
    );

Map<String, dynamic> _$$TaskUserDtoImplToJson(_$TaskUserDtoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'userName': instance.userName,
      'password': hidePassword(instance.password),
      'gender': instance.gender,
      'dob': instance.dob,
      'email': instance.email,
      'displayName': instance.displayName,
      'profilePicUrl': instance.profilePicUrl,
    };
