// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TaskUserDto _$TaskUserDtoFromJson(Map<String, dynamic> json) {
  return _TaskUserDto.fromJson(json);
}

/// @nodoc
mixin _$TaskUserDto {
  @JsonKey(name: 'uid', defaultValue: '', includeToJson: false)
  String get uid => throw _privateConstructorUsedError;
  @JsonKey(name: 'name', defaultValue: '')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'userName', defaultValue: '')
  String get userName => throw _privateConstructorUsedError;
  @JsonKey(name: 'password', defaultValue: '', toJson: hidePassword)
  String get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'gender', defaultValue: '')
  String get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'dob', defaultValue: '')
  String get dob => throw _privateConstructorUsedError;
  @JsonKey(name: 'email', defaultValue: '')
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'displayName', defaultValue: '')
  String get displayName => throw _privateConstructorUsedError;
  @JsonKey(name: 'profilePicUrl', defaultValue: '')
  String get profilePicUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskUserDtoCopyWith<TaskUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskUserDtoCopyWith<$Res> {
  factory $TaskUserDtoCopyWith(
          TaskUserDto value, $Res Function(TaskUserDto) then) =
      _$TaskUserDtoCopyWithImpl<$Res, TaskUserDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'uid', defaultValue: '', includeToJson: false) String uid,
      @JsonKey(name: 'name', defaultValue: '') String name,
      @JsonKey(name: 'userName', defaultValue: '') String userName,
      @JsonKey(name: 'password', defaultValue: '', toJson: hidePassword)
      String password,
      @JsonKey(name: 'gender', defaultValue: '') String gender,
      @JsonKey(name: 'dob', defaultValue: '') String dob,
      @JsonKey(name: 'email', defaultValue: '') String email,
      @JsonKey(name: 'displayName', defaultValue: '') String displayName,
      @JsonKey(name: 'profilePicUrl', defaultValue: '') String profilePicUrl});
}

/// @nodoc
class _$TaskUserDtoCopyWithImpl<$Res, $Val extends TaskUserDto>
    implements $TaskUserDtoCopyWith<$Res> {
  _$TaskUserDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? name = null,
    Object? userName = null,
    Object? password = null,
    Object? gender = null,
    Object? dob = null,
    Object? email = null,
    Object? displayName = null,
    Object? profilePicUrl = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      dob: null == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicUrl: null == profilePicUrl
          ? _value.profilePicUrl
          : profilePicUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskUserDtoImplCopyWith<$Res>
    implements $TaskUserDtoCopyWith<$Res> {
  factory _$$TaskUserDtoImplCopyWith(
          _$TaskUserDtoImpl value, $Res Function(_$TaskUserDtoImpl) then) =
      __$$TaskUserDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'uid', defaultValue: '', includeToJson: false) String uid,
      @JsonKey(name: 'name', defaultValue: '') String name,
      @JsonKey(name: 'userName', defaultValue: '') String userName,
      @JsonKey(name: 'password', defaultValue: '', toJson: hidePassword)
      String password,
      @JsonKey(name: 'gender', defaultValue: '') String gender,
      @JsonKey(name: 'dob', defaultValue: '') String dob,
      @JsonKey(name: 'email', defaultValue: '') String email,
      @JsonKey(name: 'displayName', defaultValue: '') String displayName,
      @JsonKey(name: 'profilePicUrl', defaultValue: '') String profilePicUrl});
}

/// @nodoc
class __$$TaskUserDtoImplCopyWithImpl<$Res>
    extends _$TaskUserDtoCopyWithImpl<$Res, _$TaskUserDtoImpl>
    implements _$$TaskUserDtoImplCopyWith<$Res> {
  __$$TaskUserDtoImplCopyWithImpl(
      _$TaskUserDtoImpl _value, $Res Function(_$TaskUserDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? name = null,
    Object? userName = null,
    Object? password = null,
    Object? gender = null,
    Object? dob = null,
    Object? email = null,
    Object? displayName = null,
    Object? profilePicUrl = null,
  }) {
    return _then(_$TaskUserDtoImpl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      dob: null == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicUrl: null == profilePicUrl
          ? _value.profilePicUrl
          : profilePicUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskUserDtoImpl extends _TaskUserDto {
  const _$TaskUserDtoImpl(
      {@JsonKey(name: 'uid', defaultValue: '', includeToJson: false)
      required this.uid,
      @JsonKey(name: 'name', defaultValue: '') required this.name,
      @JsonKey(name: 'userName', defaultValue: '') required this.userName,
      @JsonKey(name: 'password', defaultValue: '', toJson: hidePassword)
      required this.password,
      @JsonKey(name: 'gender', defaultValue: '') required this.gender,
      @JsonKey(name: 'dob', defaultValue: '') required this.dob,
      @JsonKey(name: 'email', defaultValue: '') required this.email,
      @JsonKey(name: 'displayName', defaultValue: '') required this.displayName,
      @JsonKey(name: 'profilePicUrl', defaultValue: '')
      required this.profilePicUrl})
      : super._();

  factory _$TaskUserDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskUserDtoImplFromJson(json);

  @override
  @JsonKey(name: 'uid', defaultValue: '', includeToJson: false)
  final String uid;
  @override
  @JsonKey(name: 'name', defaultValue: '')
  final String name;
  @override
  @JsonKey(name: 'userName', defaultValue: '')
  final String userName;
  @override
  @JsonKey(name: 'password', defaultValue: '', toJson: hidePassword)
  final String password;
  @override
  @JsonKey(name: 'gender', defaultValue: '')
  final String gender;
  @override
  @JsonKey(name: 'dob', defaultValue: '')
  final String dob;
  @override
  @JsonKey(name: 'email', defaultValue: '')
  final String email;
  @override
  @JsonKey(name: 'displayName', defaultValue: '')
  final String displayName;
  @override
  @JsonKey(name: 'profilePicUrl', defaultValue: '')
  final String profilePicUrl;

  @override
  String toString() {
    return 'TaskUserDto(uid: $uid, name: $name, userName: $userName, password: $password, gender: $gender, dob: $dob, email: $email, displayName: $displayName, profilePicUrl: $profilePicUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskUserDtoImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.profilePicUrl, profilePicUrl) ||
                other.profilePicUrl == profilePicUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uid, name, userName, password,
      gender, dob, email, displayName, profilePicUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskUserDtoImplCopyWith<_$TaskUserDtoImpl> get copyWith =>
      __$$TaskUserDtoImplCopyWithImpl<_$TaskUserDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskUserDtoImplToJson(
      this,
    );
  }
}

abstract class _TaskUserDto extends TaskUserDto {
  const factory _TaskUserDto(
      {@JsonKey(name: 'uid', defaultValue: '', includeToJson: false)
      required final String uid,
      @JsonKey(name: 'name', defaultValue: '') required final String name,
      @JsonKey(name: 'userName', defaultValue: '')
      required final String userName,
      @JsonKey(name: 'password', defaultValue: '', toJson: hidePassword)
      required final String password,
      @JsonKey(name: 'gender', defaultValue: '') required final String gender,
      @JsonKey(name: 'dob', defaultValue: '') required final String dob,
      @JsonKey(name: 'email', defaultValue: '') required final String email,
      @JsonKey(name: 'displayName', defaultValue: '')
      required final String displayName,
      @JsonKey(name: 'profilePicUrl', defaultValue: '')
      required final String profilePicUrl}) = _$TaskUserDtoImpl;
  const _TaskUserDto._() : super._();

  factory _TaskUserDto.fromJson(Map<String, dynamic> json) =
      _$TaskUserDtoImpl.fromJson;

  @override
  @JsonKey(name: 'uid', defaultValue: '', includeToJson: false)
  String get uid;
  @override
  @JsonKey(name: 'name', defaultValue: '')
  String get name;
  @override
  @JsonKey(name: 'userName', defaultValue: '')
  String get userName;
  @override
  @JsonKey(name: 'password', defaultValue: '', toJson: hidePassword)
  String get password;
  @override
  @JsonKey(name: 'gender', defaultValue: '')
  String get gender;
  @override
  @JsonKey(name: 'dob', defaultValue: '')
  String get dob;
  @override
  @JsonKey(name: 'email', defaultValue: '')
  String get email;
  @override
  @JsonKey(name: 'displayName', defaultValue: '')
  String get displayName;
  @override
  @JsonKey(name: 'profilePicUrl', defaultValue: '')
  String get profilePicUrl;
  @override
  @JsonKey(ignore: true)
  _$$TaskUserDtoImplCopyWith<_$TaskUserDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
