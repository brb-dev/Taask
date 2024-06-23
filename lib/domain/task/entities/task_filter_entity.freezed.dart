// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_filter_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TaskFilterEntity {
  List<TaskStatus> get statusList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskFilterEntityCopyWith<TaskFilterEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskFilterEntityCopyWith<$Res> {
  factory $TaskFilterEntityCopyWith(
          TaskFilterEntity value, $Res Function(TaskFilterEntity) then) =
      _$TaskFilterEntityCopyWithImpl<$Res, TaskFilterEntity>;
  @useResult
  $Res call({List<TaskStatus> statusList});
}

/// @nodoc
class _$TaskFilterEntityCopyWithImpl<$Res, $Val extends TaskFilterEntity>
    implements $TaskFilterEntityCopyWith<$Res> {
  _$TaskFilterEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusList = null,
  }) {
    return _then(_value.copyWith(
      statusList: null == statusList
          ? _value.statusList
          : statusList // ignore: cast_nullable_to_non_nullable
              as List<TaskStatus>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskFilterEntityImplCopyWith<$Res>
    implements $TaskFilterEntityCopyWith<$Res> {
  factory _$$TaskFilterEntityImplCopyWith(_$TaskFilterEntityImpl value,
          $Res Function(_$TaskFilterEntityImpl) then) =
      __$$TaskFilterEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TaskStatus> statusList});
}

/// @nodoc
class __$$TaskFilterEntityImplCopyWithImpl<$Res>
    extends _$TaskFilterEntityCopyWithImpl<$Res, _$TaskFilterEntityImpl>
    implements _$$TaskFilterEntityImplCopyWith<$Res> {
  __$$TaskFilterEntityImplCopyWithImpl(_$TaskFilterEntityImpl _value,
      $Res Function(_$TaskFilterEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusList = null,
  }) {
    return _then(_$TaskFilterEntityImpl(
      statusList: null == statusList
          ? _value._statusList
          : statusList // ignore: cast_nullable_to_non_nullable
              as List<TaskStatus>,
    ));
  }
}

/// @nodoc

class _$TaskFilterEntityImpl extends _TaskFilterEntity {
  const _$TaskFilterEntityImpl({required final List<TaskStatus> statusList})
      : _statusList = statusList,
        super._();

  final List<TaskStatus> _statusList;
  @override
  List<TaskStatus> get statusList {
    if (_statusList is EqualUnmodifiableListView) return _statusList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_statusList);
  }

  @override
  String toString() {
    return 'TaskFilterEntity(statusList: $statusList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskFilterEntityImpl &&
            const DeepCollectionEquality()
                .equals(other._statusList, _statusList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_statusList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskFilterEntityImplCopyWith<_$TaskFilterEntityImpl> get copyWith =>
      __$$TaskFilterEntityImplCopyWithImpl<_$TaskFilterEntityImpl>(
          this, _$identity);
}

abstract class _TaskFilterEntity extends TaskFilterEntity {
  const factory _TaskFilterEntity(
      {required final List<TaskStatus> statusList}) = _$TaskFilterEntityImpl;
  const _TaskFilterEntity._() : super._();

  @override
  List<TaskStatus> get statusList;
  @override
  @JsonKey(ignore: true)
  _$$TaskFilterEntityImplCopyWith<_$TaskFilterEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
