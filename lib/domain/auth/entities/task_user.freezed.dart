// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TaskUser {
  String get uid => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String get profilePicUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskUserCopyWith<TaskUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskUserCopyWith<$Res> {
  factory $TaskUserCopyWith(TaskUser value, $Res Function(TaskUser) then) =
      _$TaskUserCopyWithImpl<$Res, TaskUser>;
  @useResult
  $Res call(
      {String uid,
      String userName,
      String password,
      String email,
      String displayName,
      String profilePicUrl});
}

/// @nodoc
class _$TaskUserCopyWithImpl<$Res, $Val extends TaskUser>
    implements $TaskUserCopyWith<$Res> {
  _$TaskUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? userName = null,
    Object? password = null,
    Object? email = null,
    Object? displayName = null,
    Object? profilePicUrl = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
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
abstract class _$$TaskUserImplCopyWith<$Res>
    implements $TaskUserCopyWith<$Res> {
  factory _$$TaskUserImplCopyWith(
          _$TaskUserImpl value, $Res Function(_$TaskUserImpl) then) =
      __$$TaskUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uid,
      String userName,
      String password,
      String email,
      String displayName,
      String profilePicUrl});
}

/// @nodoc
class __$$TaskUserImplCopyWithImpl<$Res>
    extends _$TaskUserCopyWithImpl<$Res, _$TaskUserImpl>
    implements _$$TaskUserImplCopyWith<$Res> {
  __$$TaskUserImplCopyWithImpl(
      _$TaskUserImpl _value, $Res Function(_$TaskUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? userName = null,
    Object? password = null,
    Object? email = null,
    Object? displayName = null,
    Object? profilePicUrl = null,
  }) {
    return _then(_$TaskUserImpl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
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

class _$TaskUserImpl extends _TaskUser {
  const _$TaskUserImpl(
      {required this.uid,
      required this.userName,
      required this.password,
      required this.email,
      required this.displayName,
      required this.profilePicUrl})
      : super._();

  @override
  final String uid;
  @override
  final String userName;
  @override
  final String password;
  @override
  final String email;
  @override
  final String displayName;
  @override
  final String profilePicUrl;

  @override
  String toString() {
    return 'TaskUser(uid: $uid, userName: $userName, password: $password, email: $email, displayName: $displayName, profilePicUrl: $profilePicUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskUserImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.profilePicUrl, profilePicUrl) ||
                other.profilePicUrl == profilePicUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, uid, userName, password, email, displayName, profilePicUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskUserImplCopyWith<_$TaskUserImpl> get copyWith =>
      __$$TaskUserImplCopyWithImpl<_$TaskUserImpl>(this, _$identity);
}

abstract class _TaskUser extends TaskUser {
  const factory _TaskUser(
      {required final String uid,
      required final String userName,
      required final String password,
      required final String email,
      required final String displayName,
      required final String profilePicUrl}) = _$TaskUserImpl;
  const _TaskUser._() : super._();

  @override
  String get uid;
  @override
  String get userName;
  @override
  String get password;
  @override
  String get email;
  @override
  String get displayName;
  @override
  String get profilePicUrl;
  @override
  @JsonKey(ignore: true)
  _$$TaskUserImplCopyWith<_$TaskUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
