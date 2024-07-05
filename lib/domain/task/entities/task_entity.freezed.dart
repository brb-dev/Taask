// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TaskEntity {
  String get id => throw _privateConstructorUsedError;
  UID get uid => throw _privateConstructorUsedError;
  StringValue get title => throw _privateConstructorUsedError;
  StringValue get description => throw _privateConstructorUsedError;
  TaskStatus get status => throw _privateConstructorUsedError;
  bool get isDeleteInProgress => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskEntityCopyWith<TaskEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskEntityCopyWith<$Res> {
  factory $TaskEntityCopyWith(
          TaskEntity value, $Res Function(TaskEntity) then) =
      _$TaskEntityCopyWithImpl<$Res, TaskEntity>;
  @useResult
  $Res call(
      {String id,
      UID uid,
      StringValue title,
      StringValue description,
      TaskStatus status,
      bool isDeleteInProgress});
}

/// @nodoc
class _$TaskEntityCopyWithImpl<$Res, $Val extends TaskEntity>
    implements $TaskEntityCopyWith<$Res> {
  _$TaskEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? uid = null,
    Object? title = null,
    Object? description = null,
    Object? status = null,
    Object? isDeleteInProgress = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as UID,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as StringValue,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as StringValue,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TaskStatus,
      isDeleteInProgress: null == isDeleteInProgress
          ? _value.isDeleteInProgress
          : isDeleteInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskEntityImplCopyWith<$Res>
    implements $TaskEntityCopyWith<$Res> {
  factory _$$TaskEntityImplCopyWith(
          _$TaskEntityImpl value, $Res Function(_$TaskEntityImpl) then) =
      __$$TaskEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      UID uid,
      StringValue title,
      StringValue description,
      TaskStatus status,
      bool isDeleteInProgress});
}

/// @nodoc
class __$$TaskEntityImplCopyWithImpl<$Res>
    extends _$TaskEntityCopyWithImpl<$Res, _$TaskEntityImpl>
    implements _$$TaskEntityImplCopyWith<$Res> {
  __$$TaskEntityImplCopyWithImpl(
      _$TaskEntityImpl _value, $Res Function(_$TaskEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? uid = null,
    Object? title = null,
    Object? description = null,
    Object? status = null,
    Object? isDeleteInProgress = null,
  }) {
    return _then(_$TaskEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as UID,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as StringValue,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as StringValue,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TaskStatus,
      isDeleteInProgress: null == isDeleteInProgress
          ? _value.isDeleteInProgress
          : isDeleteInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TaskEntityImpl extends _TaskEntity {
  const _$TaskEntityImpl(
      {required this.id,
      required this.uid,
      required this.title,
      required this.description,
      required this.status,
      required this.isDeleteInProgress})
      : super._();

  @override
  final String id;
  @override
  final UID uid;
  @override
  final StringValue title;
  @override
  final StringValue description;
  @override
  final TaskStatus status;
  @override
  final bool isDeleteInProgress;

  @override
  String toString() {
    return 'TaskEntity(id: $id, uid: $uid, title: $title, description: $description, status: $status, isDeleteInProgress: $isDeleteInProgress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isDeleteInProgress, isDeleteInProgress) ||
                other.isDeleteInProgress == isDeleteInProgress));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, uid, title, description, status, isDeleteInProgress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskEntityImplCopyWith<_$TaskEntityImpl> get copyWith =>
      __$$TaskEntityImplCopyWithImpl<_$TaskEntityImpl>(this, _$identity);
}

abstract class _TaskEntity extends TaskEntity {
  const factory _TaskEntity(
      {required final String id,
      required final UID uid,
      required final StringValue title,
      required final StringValue description,
      required final TaskStatus status,
      required final bool isDeleteInProgress}) = _$TaskEntityImpl;
  const _TaskEntity._() : super._();

  @override
  String get id;
  @override
  UID get uid;
  @override
  StringValue get title;
  @override
  StringValue get description;
  @override
  TaskStatus get status;
  @override
  bool get isDeleteInProgress;
  @override
  @JsonKey(ignore: true)
  _$$TaskEntityImplCopyWith<_$TaskEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
