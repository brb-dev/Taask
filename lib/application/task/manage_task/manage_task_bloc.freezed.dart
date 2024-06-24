// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manage_task_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ManageTaskEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() addOrEditTask,
    required TResult Function(TaskEntity data) deleteTask,
    required TResult Function(TaskEntity data) setTaskData,
    required TResult Function(TaskLebel label, String newValue) onValueChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? addOrEditTask,
    TResult? Function(TaskEntity data)? deleteTask,
    TResult? Function(TaskEntity data)? setTaskData,
    TResult? Function(TaskLebel label, String newValue)? onValueChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? addOrEditTask,
    TResult Function(TaskEntity data)? deleteTask,
    TResult Function(TaskEntity data)? setTaskData,
    TResult Function(TaskLebel label, String newValue)? onValueChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_AddOrEditTask value) addOrEditTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_SetTaskData value) setTaskData,
    required TResult Function(_OnValueChange value) onValueChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_AddOrEditTask value)? addOrEditTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_SetTaskData value)? setTaskData,
    TResult? Function(_OnValueChange value)? onValueChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_AddOrEditTask value)? addOrEditTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_SetTaskData value)? setTaskData,
    TResult Function(_OnValueChange value)? onValueChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManageTaskEventCopyWith<$Res> {
  factory $ManageTaskEventCopyWith(
          ManageTaskEvent value, $Res Function(ManageTaskEvent) then) =
      _$ManageTaskEventCopyWithImpl<$Res, ManageTaskEvent>;
}

/// @nodoc
class _$ManageTaskEventCopyWithImpl<$Res, $Val extends ManageTaskEvent>
    implements $ManageTaskEventCopyWith<$Res> {
  _$ManageTaskEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res> {
  factory _$$InitImplCopyWith(
          _$InitImpl value, $Res Function(_$InitImpl) then) =
      __$$InitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$ManageTaskEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitImpl implements _Init {
  const _$InitImpl();

  @override
  String toString() {
    return 'ManageTaskEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() addOrEditTask,
    required TResult Function(TaskEntity data) deleteTask,
    required TResult Function(TaskEntity data) setTaskData,
    required TResult Function(TaskLebel label, String newValue) onValueChange,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? addOrEditTask,
    TResult? Function(TaskEntity data)? deleteTask,
    TResult? Function(TaskEntity data)? setTaskData,
    TResult? Function(TaskLebel label, String newValue)? onValueChange,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? addOrEditTask,
    TResult Function(TaskEntity data)? deleteTask,
    TResult Function(TaskEntity data)? setTaskData,
    TResult Function(TaskLebel label, String newValue)? onValueChange,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_AddOrEditTask value) addOrEditTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_SetTaskData value) setTaskData,
    required TResult Function(_OnValueChange value) onValueChange,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_AddOrEditTask value)? addOrEditTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_SetTaskData value)? setTaskData,
    TResult? Function(_OnValueChange value)? onValueChange,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_AddOrEditTask value)? addOrEditTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_SetTaskData value)? setTaskData,
    TResult Function(_OnValueChange value)? onValueChange,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements ManageTaskEvent {
  const factory _Init() = _$InitImpl;
}

/// @nodoc
abstract class _$$AddOrEditTaskImplCopyWith<$Res> {
  factory _$$AddOrEditTaskImplCopyWith(
          _$AddOrEditTaskImpl value, $Res Function(_$AddOrEditTaskImpl) then) =
      __$$AddOrEditTaskImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddOrEditTaskImplCopyWithImpl<$Res>
    extends _$ManageTaskEventCopyWithImpl<$Res, _$AddOrEditTaskImpl>
    implements _$$AddOrEditTaskImplCopyWith<$Res> {
  __$$AddOrEditTaskImplCopyWithImpl(
      _$AddOrEditTaskImpl _value, $Res Function(_$AddOrEditTaskImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddOrEditTaskImpl implements _AddOrEditTask {
  const _$AddOrEditTaskImpl();

  @override
  String toString() {
    return 'ManageTaskEvent.addOrEditTask()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddOrEditTaskImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() addOrEditTask,
    required TResult Function(TaskEntity data) deleteTask,
    required TResult Function(TaskEntity data) setTaskData,
    required TResult Function(TaskLebel label, String newValue) onValueChange,
  }) {
    return addOrEditTask();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? addOrEditTask,
    TResult? Function(TaskEntity data)? deleteTask,
    TResult? Function(TaskEntity data)? setTaskData,
    TResult? Function(TaskLebel label, String newValue)? onValueChange,
  }) {
    return addOrEditTask?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? addOrEditTask,
    TResult Function(TaskEntity data)? deleteTask,
    TResult Function(TaskEntity data)? setTaskData,
    TResult Function(TaskLebel label, String newValue)? onValueChange,
    required TResult orElse(),
  }) {
    if (addOrEditTask != null) {
      return addOrEditTask();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_AddOrEditTask value) addOrEditTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_SetTaskData value) setTaskData,
    required TResult Function(_OnValueChange value) onValueChange,
  }) {
    return addOrEditTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_AddOrEditTask value)? addOrEditTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_SetTaskData value)? setTaskData,
    TResult? Function(_OnValueChange value)? onValueChange,
  }) {
    return addOrEditTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_AddOrEditTask value)? addOrEditTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_SetTaskData value)? setTaskData,
    TResult Function(_OnValueChange value)? onValueChange,
    required TResult orElse(),
  }) {
    if (addOrEditTask != null) {
      return addOrEditTask(this);
    }
    return orElse();
  }
}

abstract class _AddOrEditTask implements ManageTaskEvent {
  const factory _AddOrEditTask() = _$AddOrEditTaskImpl;
}

/// @nodoc
abstract class _$$DeleteTaskImplCopyWith<$Res> {
  factory _$$DeleteTaskImplCopyWith(
          _$DeleteTaskImpl value, $Res Function(_$DeleteTaskImpl) then) =
      __$$DeleteTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskEntity data});

  $TaskEntityCopyWith<$Res> get data;
}

/// @nodoc
class __$$DeleteTaskImplCopyWithImpl<$Res>
    extends _$ManageTaskEventCopyWithImpl<$Res, _$DeleteTaskImpl>
    implements _$$DeleteTaskImplCopyWith<$Res> {
  __$$DeleteTaskImplCopyWithImpl(
      _$DeleteTaskImpl _value, $Res Function(_$DeleteTaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$DeleteTaskImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TaskEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskEntityCopyWith<$Res> get data {
    return $TaskEntityCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$DeleteTaskImpl implements _DeleteTask {
  const _$DeleteTaskImpl({required this.data});

  @override
  final TaskEntity data;

  @override
  String toString() {
    return 'ManageTaskEvent.deleteTask(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTaskImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteTaskImplCopyWith<_$DeleteTaskImpl> get copyWith =>
      __$$DeleteTaskImplCopyWithImpl<_$DeleteTaskImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() addOrEditTask,
    required TResult Function(TaskEntity data) deleteTask,
    required TResult Function(TaskEntity data) setTaskData,
    required TResult Function(TaskLebel label, String newValue) onValueChange,
  }) {
    return deleteTask(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? addOrEditTask,
    TResult? Function(TaskEntity data)? deleteTask,
    TResult? Function(TaskEntity data)? setTaskData,
    TResult? Function(TaskLebel label, String newValue)? onValueChange,
  }) {
    return deleteTask?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? addOrEditTask,
    TResult Function(TaskEntity data)? deleteTask,
    TResult Function(TaskEntity data)? setTaskData,
    TResult Function(TaskLebel label, String newValue)? onValueChange,
    required TResult orElse(),
  }) {
    if (deleteTask != null) {
      return deleteTask(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_AddOrEditTask value) addOrEditTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_SetTaskData value) setTaskData,
    required TResult Function(_OnValueChange value) onValueChange,
  }) {
    return deleteTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_AddOrEditTask value)? addOrEditTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_SetTaskData value)? setTaskData,
    TResult? Function(_OnValueChange value)? onValueChange,
  }) {
    return deleteTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_AddOrEditTask value)? addOrEditTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_SetTaskData value)? setTaskData,
    TResult Function(_OnValueChange value)? onValueChange,
    required TResult orElse(),
  }) {
    if (deleteTask != null) {
      return deleteTask(this);
    }
    return orElse();
  }
}

abstract class _DeleteTask implements ManageTaskEvent {
  const factory _DeleteTask({required final TaskEntity data}) =
      _$DeleteTaskImpl;

  TaskEntity get data;
  @JsonKey(ignore: true)
  _$$DeleteTaskImplCopyWith<_$DeleteTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetTaskDataImplCopyWith<$Res> {
  factory _$$SetTaskDataImplCopyWith(
          _$SetTaskDataImpl value, $Res Function(_$SetTaskDataImpl) then) =
      __$$SetTaskDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskEntity data});

  $TaskEntityCopyWith<$Res> get data;
}

/// @nodoc
class __$$SetTaskDataImplCopyWithImpl<$Res>
    extends _$ManageTaskEventCopyWithImpl<$Res, _$SetTaskDataImpl>
    implements _$$SetTaskDataImplCopyWith<$Res> {
  __$$SetTaskDataImplCopyWithImpl(
      _$SetTaskDataImpl _value, $Res Function(_$SetTaskDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SetTaskDataImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TaskEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskEntityCopyWith<$Res> get data {
    return $TaskEntityCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$SetTaskDataImpl implements _SetTaskData {
  const _$SetTaskDataImpl({required this.data});

  @override
  final TaskEntity data;

  @override
  String toString() {
    return 'ManageTaskEvent.setTaskData(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetTaskDataImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetTaskDataImplCopyWith<_$SetTaskDataImpl> get copyWith =>
      __$$SetTaskDataImplCopyWithImpl<_$SetTaskDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() addOrEditTask,
    required TResult Function(TaskEntity data) deleteTask,
    required TResult Function(TaskEntity data) setTaskData,
    required TResult Function(TaskLebel label, String newValue) onValueChange,
  }) {
    return setTaskData(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? addOrEditTask,
    TResult? Function(TaskEntity data)? deleteTask,
    TResult? Function(TaskEntity data)? setTaskData,
    TResult? Function(TaskLebel label, String newValue)? onValueChange,
  }) {
    return setTaskData?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? addOrEditTask,
    TResult Function(TaskEntity data)? deleteTask,
    TResult Function(TaskEntity data)? setTaskData,
    TResult Function(TaskLebel label, String newValue)? onValueChange,
    required TResult orElse(),
  }) {
    if (setTaskData != null) {
      return setTaskData(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_AddOrEditTask value) addOrEditTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_SetTaskData value) setTaskData,
    required TResult Function(_OnValueChange value) onValueChange,
  }) {
    return setTaskData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_AddOrEditTask value)? addOrEditTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_SetTaskData value)? setTaskData,
    TResult? Function(_OnValueChange value)? onValueChange,
  }) {
    return setTaskData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_AddOrEditTask value)? addOrEditTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_SetTaskData value)? setTaskData,
    TResult Function(_OnValueChange value)? onValueChange,
    required TResult orElse(),
  }) {
    if (setTaskData != null) {
      return setTaskData(this);
    }
    return orElse();
  }
}

abstract class _SetTaskData implements ManageTaskEvent {
  const factory _SetTaskData({required final TaskEntity data}) =
      _$SetTaskDataImpl;

  TaskEntity get data;
  @JsonKey(ignore: true)
  _$$SetTaskDataImplCopyWith<_$SetTaskDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnValueChangeImplCopyWith<$Res> {
  factory _$$OnValueChangeImplCopyWith(
          _$OnValueChangeImpl value, $Res Function(_$OnValueChangeImpl) then) =
      __$$OnValueChangeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskLebel label, String newValue});
}

/// @nodoc
class __$$OnValueChangeImplCopyWithImpl<$Res>
    extends _$ManageTaskEventCopyWithImpl<$Res, _$OnValueChangeImpl>
    implements _$$OnValueChangeImplCopyWith<$Res> {
  __$$OnValueChangeImplCopyWithImpl(
      _$OnValueChangeImpl _value, $Res Function(_$OnValueChangeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? newValue = null,
  }) {
    return _then(_$OnValueChangeImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as TaskLebel,
      newValue: null == newValue
          ? _value.newValue
          : newValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnValueChangeImpl implements _OnValueChange {
  const _$OnValueChangeImpl({required this.label, required this.newValue});

  @override
  final TaskLebel label;
  @override
  final String newValue;

  @override
  String toString() {
    return 'ManageTaskEvent.onValueChange(label: $label, newValue: $newValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnValueChangeImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.newValue, newValue) ||
                other.newValue == newValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, label, newValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnValueChangeImplCopyWith<_$OnValueChangeImpl> get copyWith =>
      __$$OnValueChangeImplCopyWithImpl<_$OnValueChangeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() addOrEditTask,
    required TResult Function(TaskEntity data) deleteTask,
    required TResult Function(TaskEntity data) setTaskData,
    required TResult Function(TaskLebel label, String newValue) onValueChange,
  }) {
    return onValueChange(label, newValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? addOrEditTask,
    TResult? Function(TaskEntity data)? deleteTask,
    TResult? Function(TaskEntity data)? setTaskData,
    TResult? Function(TaskLebel label, String newValue)? onValueChange,
  }) {
    return onValueChange?.call(label, newValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? addOrEditTask,
    TResult Function(TaskEntity data)? deleteTask,
    TResult Function(TaskEntity data)? setTaskData,
    TResult Function(TaskLebel label, String newValue)? onValueChange,
    required TResult orElse(),
  }) {
    if (onValueChange != null) {
      return onValueChange(label, newValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_AddOrEditTask value) addOrEditTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_SetTaskData value) setTaskData,
    required TResult Function(_OnValueChange value) onValueChange,
  }) {
    return onValueChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_AddOrEditTask value)? addOrEditTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_SetTaskData value)? setTaskData,
    TResult? Function(_OnValueChange value)? onValueChange,
  }) {
    return onValueChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_AddOrEditTask value)? addOrEditTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_SetTaskData value)? setTaskData,
    TResult Function(_OnValueChange value)? onValueChange,
    required TResult orElse(),
  }) {
    if (onValueChange != null) {
      return onValueChange(this);
    }
    return orElse();
  }
}

abstract class _OnValueChange implements ManageTaskEvent {
  const factory _OnValueChange(
      {required final TaskLebel label,
      required final String newValue}) = _$OnValueChangeImpl;

  TaskLebel get label;
  String get newValue;
  @JsonKey(ignore: true)
  _$$OnValueChangeImplCopyWith<_$OnValueChangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ManageTaskState {
  TaskEntity get task => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  Option<Either<ApiFailure, dynamic>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ManageTaskStateCopyWith<ManageTaskState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManageTaskStateCopyWith<$Res> {
  factory $ManageTaskStateCopyWith(
          ManageTaskState value, $Res Function(ManageTaskState) then) =
      _$ManageTaskStateCopyWithImpl<$Res, ManageTaskState>;
  @useResult
  $Res call(
      {TaskEntity task,
      bool isSubmitting,
      bool showErrorMessages,
      bool isSuccess,
      Option<Either<ApiFailure, dynamic>> failureOrSuccessOption});

  $TaskEntityCopyWith<$Res> get task;
}

/// @nodoc
class _$ManageTaskStateCopyWithImpl<$Res, $Val extends ManageTaskState>
    implements $ManageTaskStateCopyWith<$Res> {
  _$ManageTaskStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
    Object? isSubmitting = null,
    Object? showErrorMessages = null,
    Object? isSuccess = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskEntity,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskEntityCopyWith<$Res> get task {
    return $TaskEntityCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ManageTaskStateImplCopyWith<$Res>
    implements $ManageTaskStateCopyWith<$Res> {
  factory _$$ManageTaskStateImplCopyWith(_$ManageTaskStateImpl value,
          $Res Function(_$ManageTaskStateImpl) then) =
      __$$ManageTaskStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TaskEntity task,
      bool isSubmitting,
      bool showErrorMessages,
      bool isSuccess,
      Option<Either<ApiFailure, dynamic>> failureOrSuccessOption});

  @override
  $TaskEntityCopyWith<$Res> get task;
}

/// @nodoc
class __$$ManageTaskStateImplCopyWithImpl<$Res>
    extends _$ManageTaskStateCopyWithImpl<$Res, _$ManageTaskStateImpl>
    implements _$$ManageTaskStateImplCopyWith<$Res> {
  __$$ManageTaskStateImplCopyWithImpl(
      _$ManageTaskStateImpl _value, $Res Function(_$ManageTaskStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
    Object? isSubmitting = null,
    Object? showErrorMessages = null,
    Object? isSuccess = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_$ManageTaskStateImpl(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskEntity,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
    ));
  }
}

/// @nodoc

class _$ManageTaskStateImpl extends _ManageTaskState {
  const _$ManageTaskStateImpl(
      {required this.task,
      required this.isSubmitting,
      required this.showErrorMessages,
      required this.isSuccess,
      required this.failureOrSuccessOption})
      : super._();

  @override
  final TaskEntity task;
  @override
  final bool isSubmitting;
  @override
  final bool showErrorMessages;
  @override
  final bool isSuccess;
  @override
  final Option<Either<ApiFailure, dynamic>> failureOrSuccessOption;

  @override
  String toString() {
    return 'ManageTaskState(task: $task, isSubmitting: $isSubmitting, showErrorMessages: $showErrorMessages, isSuccess: $isSuccess, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ManageTaskStateImpl &&
            (identical(other.task, task) || other.task == task) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                other.failureOrSuccessOption == failureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task, isSubmitting,
      showErrorMessages, isSuccess, failureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ManageTaskStateImplCopyWith<_$ManageTaskStateImpl> get copyWith =>
      __$$ManageTaskStateImplCopyWithImpl<_$ManageTaskStateImpl>(
          this, _$identity);
}

abstract class _ManageTaskState extends ManageTaskState {
  const factory _ManageTaskState(
      {required final TaskEntity task,
      required final bool isSubmitting,
      required final bool showErrorMessages,
      required final bool isSuccess,
      required final Option<Either<ApiFailure, dynamic>>
          failureOrSuccessOption}) = _$ManageTaskStateImpl;
  const _ManageTaskState._() : super._();

  @override
  TaskEntity get task;
  @override
  bool get isSubmitting;
  @override
  bool get showErrorMessages;
  @override
  bool get isSuccess;
  @override
  Option<Either<ApiFailure, dynamic>> get failureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$ManageTaskStateImplCopyWith<_$ManageTaskStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
