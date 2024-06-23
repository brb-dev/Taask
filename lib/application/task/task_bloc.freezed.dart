// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TaskEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(TaskFilterEntity filter, SearchKey searchKey)
        fetchTaskList,
    required TResult Function() loadMoreTaskItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(TaskFilterEntity filter, SearchKey searchKey)?
        fetchTaskList,
    TResult? Function()? loadMoreTaskItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(TaskFilterEntity filter, SearchKey searchKey)?
        fetchTaskList,
    TResult Function()? loadMoreTaskItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_FetchTaskList value) fetchTaskList,
    required TResult Function(_LoadMoreTaskItem value) loadMoreTaskItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_FetchTaskList value)? fetchTaskList,
    TResult? Function(_LoadMoreTaskItem value)? loadMoreTaskItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_FetchTaskList value)? fetchTaskList,
    TResult Function(_LoadMoreTaskItem value)? loadMoreTaskItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskEventCopyWith<$Res> {
  factory $TaskEventCopyWith(TaskEvent value, $Res Function(TaskEvent) then) =
      _$TaskEventCopyWithImpl<$Res, TaskEvent>;
}

/// @nodoc
class _$TaskEventCopyWithImpl<$Res, $Val extends TaskEvent>
    implements $TaskEventCopyWith<$Res> {
  _$TaskEventCopyWithImpl(this._value, this._then);

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
    extends _$TaskEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitImpl implements _Init {
  const _$InitImpl();

  @override
  String toString() {
    return 'TaskEvent.init()';
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
    required TResult Function(TaskFilterEntity filter, SearchKey searchKey)
        fetchTaskList,
    required TResult Function() loadMoreTaskItem,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(TaskFilterEntity filter, SearchKey searchKey)?
        fetchTaskList,
    TResult? Function()? loadMoreTaskItem,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(TaskFilterEntity filter, SearchKey searchKey)?
        fetchTaskList,
    TResult Function()? loadMoreTaskItem,
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
    required TResult Function(_FetchTaskList value) fetchTaskList,
    required TResult Function(_LoadMoreTaskItem value) loadMoreTaskItem,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_FetchTaskList value)? fetchTaskList,
    TResult? Function(_LoadMoreTaskItem value)? loadMoreTaskItem,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_FetchTaskList value)? fetchTaskList,
    TResult Function(_LoadMoreTaskItem value)? loadMoreTaskItem,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements TaskEvent {
  const factory _Init() = _$InitImpl;
}

/// @nodoc
abstract class _$$FetchTaskListImplCopyWith<$Res> {
  factory _$$FetchTaskListImplCopyWith(
          _$FetchTaskListImpl value, $Res Function(_$FetchTaskListImpl) then) =
      __$$FetchTaskListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskFilterEntity filter, SearchKey searchKey});

  $TaskFilterEntityCopyWith<$Res> get filter;
}

/// @nodoc
class __$$FetchTaskListImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$FetchTaskListImpl>
    implements _$$FetchTaskListImplCopyWith<$Res> {
  __$$FetchTaskListImplCopyWithImpl(
      _$FetchTaskListImpl _value, $Res Function(_$FetchTaskListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
    Object? searchKey = null,
  }) {
    return _then(_$FetchTaskListImpl(
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as TaskFilterEntity,
      searchKey: null == searchKey
          ? _value.searchKey
          : searchKey // ignore: cast_nullable_to_non_nullable
              as SearchKey,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskFilterEntityCopyWith<$Res> get filter {
    return $TaskFilterEntityCopyWith<$Res>(_value.filter, (value) {
      return _then(_value.copyWith(filter: value));
    });
  }
}

/// @nodoc

class _$FetchTaskListImpl implements _FetchTaskList {
  const _$FetchTaskListImpl({required this.filter, required this.searchKey});

  @override
  final TaskFilterEntity filter;
  @override
  final SearchKey searchKey;

  @override
  String toString() {
    return 'TaskEvent.fetchTaskList(filter: $filter, searchKey: $searchKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchTaskListImpl &&
            (identical(other.filter, filter) || other.filter == filter) &&
            (identical(other.searchKey, searchKey) ||
                other.searchKey == searchKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filter, searchKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchTaskListImplCopyWith<_$FetchTaskListImpl> get copyWith =>
      __$$FetchTaskListImplCopyWithImpl<_$FetchTaskListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(TaskFilterEntity filter, SearchKey searchKey)
        fetchTaskList,
    required TResult Function() loadMoreTaskItem,
  }) {
    return fetchTaskList(filter, searchKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(TaskFilterEntity filter, SearchKey searchKey)?
        fetchTaskList,
    TResult? Function()? loadMoreTaskItem,
  }) {
    return fetchTaskList?.call(filter, searchKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(TaskFilterEntity filter, SearchKey searchKey)?
        fetchTaskList,
    TResult Function()? loadMoreTaskItem,
    required TResult orElse(),
  }) {
    if (fetchTaskList != null) {
      return fetchTaskList(filter, searchKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_FetchTaskList value) fetchTaskList,
    required TResult Function(_LoadMoreTaskItem value) loadMoreTaskItem,
  }) {
    return fetchTaskList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_FetchTaskList value)? fetchTaskList,
    TResult? Function(_LoadMoreTaskItem value)? loadMoreTaskItem,
  }) {
    return fetchTaskList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_FetchTaskList value)? fetchTaskList,
    TResult Function(_LoadMoreTaskItem value)? loadMoreTaskItem,
    required TResult orElse(),
  }) {
    if (fetchTaskList != null) {
      return fetchTaskList(this);
    }
    return orElse();
  }
}

abstract class _FetchTaskList implements TaskEvent {
  const factory _FetchTaskList(
      {required final TaskFilterEntity filter,
      required final SearchKey searchKey}) = _$FetchTaskListImpl;

  TaskFilterEntity get filter;
  SearchKey get searchKey;
  @JsonKey(ignore: true)
  _$$FetchTaskListImplCopyWith<_$FetchTaskListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadMoreTaskItemImplCopyWith<$Res> {
  factory _$$LoadMoreTaskItemImplCopyWith(_$LoadMoreTaskItemImpl value,
          $Res Function(_$LoadMoreTaskItemImpl) then) =
      __$$LoadMoreTaskItemImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadMoreTaskItemImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$LoadMoreTaskItemImpl>
    implements _$$LoadMoreTaskItemImplCopyWith<$Res> {
  __$$LoadMoreTaskItemImplCopyWithImpl(_$LoadMoreTaskItemImpl _value,
      $Res Function(_$LoadMoreTaskItemImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadMoreTaskItemImpl implements _LoadMoreTaskItem {
  const _$LoadMoreTaskItemImpl();

  @override
  String toString() {
    return 'TaskEvent.loadMoreTaskItem()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadMoreTaskItemImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(TaskFilterEntity filter, SearchKey searchKey)
        fetchTaskList,
    required TResult Function() loadMoreTaskItem,
  }) {
    return loadMoreTaskItem();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(TaskFilterEntity filter, SearchKey searchKey)?
        fetchTaskList,
    TResult? Function()? loadMoreTaskItem,
  }) {
    return loadMoreTaskItem?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(TaskFilterEntity filter, SearchKey searchKey)?
        fetchTaskList,
    TResult Function()? loadMoreTaskItem,
    required TResult orElse(),
  }) {
    if (loadMoreTaskItem != null) {
      return loadMoreTaskItem();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_FetchTaskList value) fetchTaskList,
    required TResult Function(_LoadMoreTaskItem value) loadMoreTaskItem,
  }) {
    return loadMoreTaskItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_FetchTaskList value)? fetchTaskList,
    TResult? Function(_LoadMoreTaskItem value)? loadMoreTaskItem,
  }) {
    return loadMoreTaskItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_FetchTaskList value)? fetchTaskList,
    TResult Function(_LoadMoreTaskItem value)? loadMoreTaskItem,
    required TResult orElse(),
  }) {
    if (loadMoreTaskItem != null) {
      return loadMoreTaskItem(this);
    }
    return orElse();
  }
}

abstract class _LoadMoreTaskItem implements TaskEvent {
  const factory _LoadMoreTaskItem() = _$LoadMoreTaskItemImpl;
}

/// @nodoc
mixin _$TaskState {
  List<TaskEntity> get taskList => throw _privateConstructorUsedError;
  bool get isFetching => throw _privateConstructorUsedError;
  bool get canLoadMore => throw _privateConstructorUsedError;
  SearchKey get searchKey => throw _privateConstructorUsedError;
  TaskFilterEntity get appliedFilter => throw _privateConstructorUsedError;
  Option<Either<ApiFailure, dynamic>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskStateCopyWith<TaskState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskStateCopyWith<$Res> {
  factory $TaskStateCopyWith(TaskState value, $Res Function(TaskState) then) =
      _$TaskStateCopyWithImpl<$Res, TaskState>;
  @useResult
  $Res call(
      {List<TaskEntity> taskList,
      bool isFetching,
      bool canLoadMore,
      SearchKey searchKey,
      TaskFilterEntity appliedFilter,
      Option<Either<ApiFailure, dynamic>> authFailureOrSuccessOption});

  $TaskFilterEntityCopyWith<$Res> get appliedFilter;
}

/// @nodoc
class _$TaskStateCopyWithImpl<$Res, $Val extends TaskState>
    implements $TaskStateCopyWith<$Res> {
  _$TaskStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskList = null,
    Object? isFetching = null,
    Object? canLoadMore = null,
    Object? searchKey = null,
    Object? appliedFilter = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      taskList: null == taskList
          ? _value.taskList
          : taskList // ignore: cast_nullable_to_non_nullable
              as List<TaskEntity>,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      canLoadMore: null == canLoadMore
          ? _value.canLoadMore
          : canLoadMore // ignore: cast_nullable_to_non_nullable
              as bool,
      searchKey: null == searchKey
          ? _value.searchKey
          : searchKey // ignore: cast_nullable_to_non_nullable
              as SearchKey,
      appliedFilter: null == appliedFilter
          ? _value.appliedFilter
          : appliedFilter // ignore: cast_nullable_to_non_nullable
              as TaskFilterEntity,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskFilterEntityCopyWith<$Res> get appliedFilter {
    return $TaskFilterEntityCopyWith<$Res>(_value.appliedFilter, (value) {
      return _then(_value.copyWith(appliedFilter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TaskStateImplCopyWith<$Res>
    implements $TaskStateCopyWith<$Res> {
  factory _$$TaskStateImplCopyWith(
          _$TaskStateImpl value, $Res Function(_$TaskStateImpl) then) =
      __$$TaskStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TaskEntity> taskList,
      bool isFetching,
      bool canLoadMore,
      SearchKey searchKey,
      TaskFilterEntity appliedFilter,
      Option<Either<ApiFailure, dynamic>> authFailureOrSuccessOption});

  @override
  $TaskFilterEntityCopyWith<$Res> get appliedFilter;
}

/// @nodoc
class __$$TaskStateImplCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$TaskStateImpl>
    implements _$$TaskStateImplCopyWith<$Res> {
  __$$TaskStateImplCopyWithImpl(
      _$TaskStateImpl _value, $Res Function(_$TaskStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskList = null,
    Object? isFetching = null,
    Object? canLoadMore = null,
    Object? searchKey = null,
    Object? appliedFilter = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_$TaskStateImpl(
      taskList: null == taskList
          ? _value._taskList
          : taskList // ignore: cast_nullable_to_non_nullable
              as List<TaskEntity>,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      canLoadMore: null == canLoadMore
          ? _value.canLoadMore
          : canLoadMore // ignore: cast_nullable_to_non_nullable
              as bool,
      searchKey: null == searchKey
          ? _value.searchKey
          : searchKey // ignore: cast_nullable_to_non_nullable
              as SearchKey,
      appliedFilter: null == appliedFilter
          ? _value.appliedFilter
          : appliedFilter // ignore: cast_nullable_to_non_nullable
              as TaskFilterEntity,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
    ));
  }
}

/// @nodoc

class _$TaskStateImpl extends _TaskState {
  const _$TaskStateImpl(
      {required final List<TaskEntity> taskList,
      required this.isFetching,
      required this.canLoadMore,
      required this.searchKey,
      required this.appliedFilter,
      required this.authFailureOrSuccessOption})
      : _taskList = taskList,
        super._();

  final List<TaskEntity> _taskList;
  @override
  List<TaskEntity> get taskList {
    if (_taskList is EqualUnmodifiableListView) return _taskList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_taskList);
  }

  @override
  final bool isFetching;
  @override
  final bool canLoadMore;
  @override
  final SearchKey searchKey;
  @override
  final TaskFilterEntity appliedFilter;
  @override
  final Option<Either<ApiFailure, dynamic>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'TaskState(taskList: $taskList, isFetching: $isFetching, canLoadMore: $canLoadMore, searchKey: $searchKey, appliedFilter: $appliedFilter, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskStateImpl &&
            const DeepCollectionEquality().equals(other._taskList, _taskList) &&
            (identical(other.isFetching, isFetching) ||
                other.isFetching == isFetching) &&
            (identical(other.canLoadMore, canLoadMore) ||
                other.canLoadMore == canLoadMore) &&
            (identical(other.searchKey, searchKey) ||
                other.searchKey == searchKey) &&
            (identical(other.appliedFilter, appliedFilter) ||
                other.appliedFilter == appliedFilter) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                other.authFailureOrSuccessOption ==
                    authFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_taskList),
      isFetching,
      canLoadMore,
      searchKey,
      appliedFilter,
      authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskStateImplCopyWith<_$TaskStateImpl> get copyWith =>
      __$$TaskStateImplCopyWithImpl<_$TaskStateImpl>(this, _$identity);
}

abstract class _TaskState extends TaskState {
  const factory _TaskState(
      {required final List<TaskEntity> taskList,
      required final bool isFetching,
      required final bool canLoadMore,
      required final SearchKey searchKey,
      required final TaskFilterEntity appliedFilter,
      required final Option<Either<ApiFailure, dynamic>>
          authFailureOrSuccessOption}) = _$TaskStateImpl;
  const _TaskState._() : super._();

  @override
  List<TaskEntity> get taskList;
  @override
  bool get isFetching;
  @override
  bool get canLoadMore;
  @override
  SearchKey get searchKey;
  @override
  TaskFilterEntity get appliedFilter;
  @override
  Option<Either<ApiFailure, dynamic>> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$TaskStateImplCopyWith<_$TaskStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
