// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ApiFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) other,
    required TResult Function(String message) serverError,
    required TResult Function() poorConnection,
    required TResult Function() serverTimeout,
    required TResult Function() userNotFound,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function() accountLocked,
    required TResult Function() accountExpired,
    required TResult Function() tokenExpired,
    required TResult Function() authenticationFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? other,
    TResult? Function(String message)? serverError,
    TResult? Function()? poorConnection,
    TResult? Function()? serverTimeout,
    TResult? Function()? userNotFound,
    TResult? Function()? invalidEmailAndPasswordCombination,
    TResult? Function()? accountLocked,
    TResult? Function()? accountExpired,
    TResult? Function()? tokenExpired,
    TResult? Function()? authenticationFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? other,
    TResult Function(String message)? serverError,
    TResult Function()? poorConnection,
    TResult Function()? serverTimeout,
    TResult Function()? userNotFound,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? accountLocked,
    TResult Function()? accountExpired,
    TResult Function()? tokenExpired,
    TResult Function()? authenticationFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Other value) other,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_PoorConnection value) poorConnection,
    required TResult Function(_ServerTimeout value) serverTimeout,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
    required TResult Function(_AccountLocked value) accountLocked,
    required TResult Function(_AccountExpired value) accountExpired,
    required TResult Function(_TokenExpired value) tokenExpired,
    required TResult Function(_AuthenticationFailed value) authenticationFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Other value)? other,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_PoorConnection value)? poorConnection,
    TResult? Function(_ServerTimeout value)? serverTimeout,
    TResult? Function(_UserNotFound value)? userNotFound,
    TResult? Function(_InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult? Function(_AccountLocked value)? accountLocked,
    TResult? Function(_AccountExpired value)? accountExpired,
    TResult? Function(_TokenExpired value)? tokenExpired,
    TResult? Function(_AuthenticationFailed value)? authenticationFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Other value)? other,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_PoorConnection value)? poorConnection,
    TResult Function(_ServerTimeout value)? serverTimeout,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(_AccountLocked value)? accountLocked,
    TResult Function(_AccountExpired value)? accountExpired,
    TResult Function(_TokenExpired value)? tokenExpired,
    TResult Function(_AuthenticationFailed value)? authenticationFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiFailureCopyWith<$Res> {
  factory $ApiFailureCopyWith(
          ApiFailure value, $Res Function(ApiFailure) then) =
      _$ApiFailureCopyWithImpl<$Res, ApiFailure>;
}

/// @nodoc
class _$ApiFailureCopyWithImpl<$Res, $Val extends ApiFailure>
    implements $ApiFailureCopyWith<$Res> {
  _$ApiFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OtherImplCopyWith<$Res> {
  factory _$$OtherImplCopyWith(
          _$OtherImpl value, $Res Function(_$OtherImpl) then) =
      __$$OtherImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$OtherImplCopyWithImpl<$Res>
    extends _$ApiFailureCopyWithImpl<$Res, _$OtherImpl>
    implements _$$OtherImplCopyWith<$Res> {
  __$$OtherImplCopyWithImpl(
      _$OtherImpl _value, $Res Function(_$OtherImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$OtherImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OtherImpl implements _Other {
  const _$OtherImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ApiFailure.other(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtherImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtherImplCopyWith<_$OtherImpl> get copyWith =>
      __$$OtherImplCopyWithImpl<_$OtherImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) other,
    required TResult Function(String message) serverError,
    required TResult Function() poorConnection,
    required TResult Function() serverTimeout,
    required TResult Function() userNotFound,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function() accountLocked,
    required TResult Function() accountExpired,
    required TResult Function() tokenExpired,
    required TResult Function() authenticationFailed,
  }) {
    return other(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? other,
    TResult? Function(String message)? serverError,
    TResult? Function()? poorConnection,
    TResult? Function()? serverTimeout,
    TResult? Function()? userNotFound,
    TResult? Function()? invalidEmailAndPasswordCombination,
    TResult? Function()? accountLocked,
    TResult? Function()? accountExpired,
    TResult? Function()? tokenExpired,
    TResult? Function()? authenticationFailed,
  }) {
    return other?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? other,
    TResult Function(String message)? serverError,
    TResult Function()? poorConnection,
    TResult Function()? serverTimeout,
    TResult Function()? userNotFound,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? accountLocked,
    TResult Function()? accountExpired,
    TResult Function()? tokenExpired,
    TResult Function()? authenticationFailed,
    required TResult orElse(),
  }) {
    if (other != null) {
      return other(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Other value) other,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_PoorConnection value) poorConnection,
    required TResult Function(_ServerTimeout value) serverTimeout,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
    required TResult Function(_AccountLocked value) accountLocked,
    required TResult Function(_AccountExpired value) accountExpired,
    required TResult Function(_TokenExpired value) tokenExpired,
    required TResult Function(_AuthenticationFailed value) authenticationFailed,
  }) {
    return other(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Other value)? other,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_PoorConnection value)? poorConnection,
    TResult? Function(_ServerTimeout value)? serverTimeout,
    TResult? Function(_UserNotFound value)? userNotFound,
    TResult? Function(_InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult? Function(_AccountLocked value)? accountLocked,
    TResult? Function(_AccountExpired value)? accountExpired,
    TResult? Function(_TokenExpired value)? tokenExpired,
    TResult? Function(_AuthenticationFailed value)? authenticationFailed,
  }) {
    return other?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Other value)? other,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_PoorConnection value)? poorConnection,
    TResult Function(_ServerTimeout value)? serverTimeout,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(_AccountLocked value)? accountLocked,
    TResult Function(_AccountExpired value)? accountExpired,
    TResult Function(_TokenExpired value)? tokenExpired,
    TResult Function(_AuthenticationFailed value)? authenticationFailed,
    required TResult orElse(),
  }) {
    if (other != null) {
      return other(this);
    }
    return orElse();
  }
}

abstract class _Other implements ApiFailure {
  const factory _Other(final String message) = _$OtherImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$OtherImplCopyWith<_$OtherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerErrorImplCopyWith<$Res> {
  factory _$$ServerErrorImplCopyWith(
          _$ServerErrorImpl value, $Res Function(_$ServerErrorImpl) then) =
      __$$ServerErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ServerErrorImplCopyWithImpl<$Res>
    extends _$ApiFailureCopyWithImpl<$Res, _$ServerErrorImpl>
    implements _$$ServerErrorImplCopyWith<$Res> {
  __$$ServerErrorImplCopyWithImpl(
      _$ServerErrorImpl _value, $Res Function(_$ServerErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ServerErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ServerErrorImpl implements _ServerError {
  const _$ServerErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ApiFailure.serverError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerErrorImplCopyWith<_$ServerErrorImpl> get copyWith =>
      __$$ServerErrorImplCopyWithImpl<_$ServerErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) other,
    required TResult Function(String message) serverError,
    required TResult Function() poorConnection,
    required TResult Function() serverTimeout,
    required TResult Function() userNotFound,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function() accountLocked,
    required TResult Function() accountExpired,
    required TResult Function() tokenExpired,
    required TResult Function() authenticationFailed,
  }) {
    return serverError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? other,
    TResult? Function(String message)? serverError,
    TResult? Function()? poorConnection,
    TResult? Function()? serverTimeout,
    TResult? Function()? userNotFound,
    TResult? Function()? invalidEmailAndPasswordCombination,
    TResult? Function()? accountLocked,
    TResult? Function()? accountExpired,
    TResult? Function()? tokenExpired,
    TResult? Function()? authenticationFailed,
  }) {
    return serverError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? other,
    TResult Function(String message)? serverError,
    TResult Function()? poorConnection,
    TResult Function()? serverTimeout,
    TResult Function()? userNotFound,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? accountLocked,
    TResult Function()? accountExpired,
    TResult Function()? tokenExpired,
    TResult Function()? authenticationFailed,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Other value) other,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_PoorConnection value) poorConnection,
    required TResult Function(_ServerTimeout value) serverTimeout,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
    required TResult Function(_AccountLocked value) accountLocked,
    required TResult Function(_AccountExpired value) accountExpired,
    required TResult Function(_TokenExpired value) tokenExpired,
    required TResult Function(_AuthenticationFailed value) authenticationFailed,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Other value)? other,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_PoorConnection value)? poorConnection,
    TResult? Function(_ServerTimeout value)? serverTimeout,
    TResult? Function(_UserNotFound value)? userNotFound,
    TResult? Function(_InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult? Function(_AccountLocked value)? accountLocked,
    TResult? Function(_AccountExpired value)? accountExpired,
    TResult? Function(_TokenExpired value)? tokenExpired,
    TResult? Function(_AuthenticationFailed value)? authenticationFailed,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Other value)? other,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_PoorConnection value)? poorConnection,
    TResult Function(_ServerTimeout value)? serverTimeout,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(_AccountLocked value)? accountLocked,
    TResult Function(_AccountExpired value)? accountExpired,
    TResult Function(_TokenExpired value)? tokenExpired,
    TResult Function(_AuthenticationFailed value)? authenticationFailed,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements ApiFailure {
  const factory _ServerError(final String message) = _$ServerErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ServerErrorImplCopyWith<_$ServerErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PoorConnectionImplCopyWith<$Res> {
  factory _$$PoorConnectionImplCopyWith(_$PoorConnectionImpl value,
          $Res Function(_$PoorConnectionImpl) then) =
      __$$PoorConnectionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PoorConnectionImplCopyWithImpl<$Res>
    extends _$ApiFailureCopyWithImpl<$Res, _$PoorConnectionImpl>
    implements _$$PoorConnectionImplCopyWith<$Res> {
  __$$PoorConnectionImplCopyWithImpl(
      _$PoorConnectionImpl _value, $Res Function(_$PoorConnectionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PoorConnectionImpl implements _PoorConnection {
  const _$PoorConnectionImpl();

  @override
  String toString() {
    return 'ApiFailure.poorConnection()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PoorConnectionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) other,
    required TResult Function(String message) serverError,
    required TResult Function() poorConnection,
    required TResult Function() serverTimeout,
    required TResult Function() userNotFound,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function() accountLocked,
    required TResult Function() accountExpired,
    required TResult Function() tokenExpired,
    required TResult Function() authenticationFailed,
  }) {
    return poorConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? other,
    TResult? Function(String message)? serverError,
    TResult? Function()? poorConnection,
    TResult? Function()? serverTimeout,
    TResult? Function()? userNotFound,
    TResult? Function()? invalidEmailAndPasswordCombination,
    TResult? Function()? accountLocked,
    TResult? Function()? accountExpired,
    TResult? Function()? tokenExpired,
    TResult? Function()? authenticationFailed,
  }) {
    return poorConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? other,
    TResult Function(String message)? serverError,
    TResult Function()? poorConnection,
    TResult Function()? serverTimeout,
    TResult Function()? userNotFound,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? accountLocked,
    TResult Function()? accountExpired,
    TResult Function()? tokenExpired,
    TResult Function()? authenticationFailed,
    required TResult orElse(),
  }) {
    if (poorConnection != null) {
      return poorConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Other value) other,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_PoorConnection value) poorConnection,
    required TResult Function(_ServerTimeout value) serverTimeout,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
    required TResult Function(_AccountLocked value) accountLocked,
    required TResult Function(_AccountExpired value) accountExpired,
    required TResult Function(_TokenExpired value) tokenExpired,
    required TResult Function(_AuthenticationFailed value) authenticationFailed,
  }) {
    return poorConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Other value)? other,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_PoorConnection value)? poorConnection,
    TResult? Function(_ServerTimeout value)? serverTimeout,
    TResult? Function(_UserNotFound value)? userNotFound,
    TResult? Function(_InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult? Function(_AccountLocked value)? accountLocked,
    TResult? Function(_AccountExpired value)? accountExpired,
    TResult? Function(_TokenExpired value)? tokenExpired,
    TResult? Function(_AuthenticationFailed value)? authenticationFailed,
  }) {
    return poorConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Other value)? other,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_PoorConnection value)? poorConnection,
    TResult Function(_ServerTimeout value)? serverTimeout,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(_AccountLocked value)? accountLocked,
    TResult Function(_AccountExpired value)? accountExpired,
    TResult Function(_TokenExpired value)? tokenExpired,
    TResult Function(_AuthenticationFailed value)? authenticationFailed,
    required TResult orElse(),
  }) {
    if (poorConnection != null) {
      return poorConnection(this);
    }
    return orElse();
  }
}

abstract class _PoorConnection implements ApiFailure {
  const factory _PoorConnection() = _$PoorConnectionImpl;
}

/// @nodoc
abstract class _$$ServerTimeoutImplCopyWith<$Res> {
  factory _$$ServerTimeoutImplCopyWith(
          _$ServerTimeoutImpl value, $Res Function(_$ServerTimeoutImpl) then) =
      __$$ServerTimeoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServerTimeoutImplCopyWithImpl<$Res>
    extends _$ApiFailureCopyWithImpl<$Res, _$ServerTimeoutImpl>
    implements _$$ServerTimeoutImplCopyWith<$Res> {
  __$$ServerTimeoutImplCopyWithImpl(
      _$ServerTimeoutImpl _value, $Res Function(_$ServerTimeoutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ServerTimeoutImpl implements _ServerTimeout {
  const _$ServerTimeoutImpl();

  @override
  String toString() {
    return 'ApiFailure.serverTimeout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServerTimeoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) other,
    required TResult Function(String message) serverError,
    required TResult Function() poorConnection,
    required TResult Function() serverTimeout,
    required TResult Function() userNotFound,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function() accountLocked,
    required TResult Function() accountExpired,
    required TResult Function() tokenExpired,
    required TResult Function() authenticationFailed,
  }) {
    return serverTimeout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? other,
    TResult? Function(String message)? serverError,
    TResult? Function()? poorConnection,
    TResult? Function()? serverTimeout,
    TResult? Function()? userNotFound,
    TResult? Function()? invalidEmailAndPasswordCombination,
    TResult? Function()? accountLocked,
    TResult? Function()? accountExpired,
    TResult? Function()? tokenExpired,
    TResult? Function()? authenticationFailed,
  }) {
    return serverTimeout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? other,
    TResult Function(String message)? serverError,
    TResult Function()? poorConnection,
    TResult Function()? serverTimeout,
    TResult Function()? userNotFound,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? accountLocked,
    TResult Function()? accountExpired,
    TResult Function()? tokenExpired,
    TResult Function()? authenticationFailed,
    required TResult orElse(),
  }) {
    if (serverTimeout != null) {
      return serverTimeout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Other value) other,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_PoorConnection value) poorConnection,
    required TResult Function(_ServerTimeout value) serverTimeout,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
    required TResult Function(_AccountLocked value) accountLocked,
    required TResult Function(_AccountExpired value) accountExpired,
    required TResult Function(_TokenExpired value) tokenExpired,
    required TResult Function(_AuthenticationFailed value) authenticationFailed,
  }) {
    return serverTimeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Other value)? other,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_PoorConnection value)? poorConnection,
    TResult? Function(_ServerTimeout value)? serverTimeout,
    TResult? Function(_UserNotFound value)? userNotFound,
    TResult? Function(_InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult? Function(_AccountLocked value)? accountLocked,
    TResult? Function(_AccountExpired value)? accountExpired,
    TResult? Function(_TokenExpired value)? tokenExpired,
    TResult? Function(_AuthenticationFailed value)? authenticationFailed,
  }) {
    return serverTimeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Other value)? other,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_PoorConnection value)? poorConnection,
    TResult Function(_ServerTimeout value)? serverTimeout,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(_AccountLocked value)? accountLocked,
    TResult Function(_AccountExpired value)? accountExpired,
    TResult Function(_TokenExpired value)? tokenExpired,
    TResult Function(_AuthenticationFailed value)? authenticationFailed,
    required TResult orElse(),
  }) {
    if (serverTimeout != null) {
      return serverTimeout(this);
    }
    return orElse();
  }
}

abstract class _ServerTimeout implements ApiFailure {
  const factory _ServerTimeout() = _$ServerTimeoutImpl;
}

/// @nodoc
abstract class _$$UserNotFoundImplCopyWith<$Res> {
  factory _$$UserNotFoundImplCopyWith(
          _$UserNotFoundImpl value, $Res Function(_$UserNotFoundImpl) then) =
      __$$UserNotFoundImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserNotFoundImplCopyWithImpl<$Res>
    extends _$ApiFailureCopyWithImpl<$Res, _$UserNotFoundImpl>
    implements _$$UserNotFoundImplCopyWith<$Res> {
  __$$UserNotFoundImplCopyWithImpl(
      _$UserNotFoundImpl _value, $Res Function(_$UserNotFoundImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserNotFoundImpl implements _UserNotFound {
  const _$UserNotFoundImpl();

  @override
  String toString() {
    return 'ApiFailure.userNotFound()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserNotFoundImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) other,
    required TResult Function(String message) serverError,
    required TResult Function() poorConnection,
    required TResult Function() serverTimeout,
    required TResult Function() userNotFound,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function() accountLocked,
    required TResult Function() accountExpired,
    required TResult Function() tokenExpired,
    required TResult Function() authenticationFailed,
  }) {
    return userNotFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? other,
    TResult? Function(String message)? serverError,
    TResult? Function()? poorConnection,
    TResult? Function()? serverTimeout,
    TResult? Function()? userNotFound,
    TResult? Function()? invalidEmailAndPasswordCombination,
    TResult? Function()? accountLocked,
    TResult? Function()? accountExpired,
    TResult? Function()? tokenExpired,
    TResult? Function()? authenticationFailed,
  }) {
    return userNotFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? other,
    TResult Function(String message)? serverError,
    TResult Function()? poorConnection,
    TResult Function()? serverTimeout,
    TResult Function()? userNotFound,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? accountLocked,
    TResult Function()? accountExpired,
    TResult Function()? tokenExpired,
    TResult Function()? authenticationFailed,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Other value) other,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_PoorConnection value) poorConnection,
    required TResult Function(_ServerTimeout value) serverTimeout,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
    required TResult Function(_AccountLocked value) accountLocked,
    required TResult Function(_AccountExpired value) accountExpired,
    required TResult Function(_TokenExpired value) tokenExpired,
    required TResult Function(_AuthenticationFailed value) authenticationFailed,
  }) {
    return userNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Other value)? other,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_PoorConnection value)? poorConnection,
    TResult? Function(_ServerTimeout value)? serverTimeout,
    TResult? Function(_UserNotFound value)? userNotFound,
    TResult? Function(_InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult? Function(_AccountLocked value)? accountLocked,
    TResult? Function(_AccountExpired value)? accountExpired,
    TResult? Function(_TokenExpired value)? tokenExpired,
    TResult? Function(_AuthenticationFailed value)? authenticationFailed,
  }) {
    return userNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Other value)? other,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_PoorConnection value)? poorConnection,
    TResult Function(_ServerTimeout value)? serverTimeout,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(_AccountLocked value)? accountLocked,
    TResult Function(_AccountExpired value)? accountExpired,
    TResult Function(_TokenExpired value)? tokenExpired,
    TResult Function(_AuthenticationFailed value)? authenticationFailed,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound(this);
    }
    return orElse();
  }
}

abstract class _UserNotFound implements ApiFailure {
  const factory _UserNotFound() = _$UserNotFoundImpl;
}

/// @nodoc
abstract class _$$InvalidEmailAndPasswordCombinationImplCopyWith<$Res> {
  factory _$$InvalidEmailAndPasswordCombinationImplCopyWith(
          _$InvalidEmailAndPasswordCombinationImpl value,
          $Res Function(_$InvalidEmailAndPasswordCombinationImpl) then) =
      __$$InvalidEmailAndPasswordCombinationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvalidEmailAndPasswordCombinationImplCopyWithImpl<$Res>
    extends _$ApiFailureCopyWithImpl<$Res,
        _$InvalidEmailAndPasswordCombinationImpl>
    implements _$$InvalidEmailAndPasswordCombinationImplCopyWith<$Res> {
  __$$InvalidEmailAndPasswordCombinationImplCopyWithImpl(
      _$InvalidEmailAndPasswordCombinationImpl _value,
      $Res Function(_$InvalidEmailAndPasswordCombinationImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InvalidEmailAndPasswordCombinationImpl
    implements _InvalidEmailAndPasswordCombination {
  const _$InvalidEmailAndPasswordCombinationImpl();

  @override
  String toString() {
    return 'ApiFailure.invalidEmailAndPasswordCombination()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidEmailAndPasswordCombinationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) other,
    required TResult Function(String message) serverError,
    required TResult Function() poorConnection,
    required TResult Function() serverTimeout,
    required TResult Function() userNotFound,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function() accountLocked,
    required TResult Function() accountExpired,
    required TResult Function() tokenExpired,
    required TResult Function() authenticationFailed,
  }) {
    return invalidEmailAndPasswordCombination();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? other,
    TResult? Function(String message)? serverError,
    TResult? Function()? poorConnection,
    TResult? Function()? serverTimeout,
    TResult? Function()? userNotFound,
    TResult? Function()? invalidEmailAndPasswordCombination,
    TResult? Function()? accountLocked,
    TResult? Function()? accountExpired,
    TResult? Function()? tokenExpired,
    TResult? Function()? authenticationFailed,
  }) {
    return invalidEmailAndPasswordCombination?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? other,
    TResult Function(String message)? serverError,
    TResult Function()? poorConnection,
    TResult Function()? serverTimeout,
    TResult Function()? userNotFound,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? accountLocked,
    TResult Function()? accountExpired,
    TResult Function()? tokenExpired,
    TResult Function()? authenticationFailed,
    required TResult orElse(),
  }) {
    if (invalidEmailAndPasswordCombination != null) {
      return invalidEmailAndPasswordCombination();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Other value) other,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_PoorConnection value) poorConnection,
    required TResult Function(_ServerTimeout value) serverTimeout,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
    required TResult Function(_AccountLocked value) accountLocked,
    required TResult Function(_AccountExpired value) accountExpired,
    required TResult Function(_TokenExpired value) tokenExpired,
    required TResult Function(_AuthenticationFailed value) authenticationFailed,
  }) {
    return invalidEmailAndPasswordCombination(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Other value)? other,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_PoorConnection value)? poorConnection,
    TResult? Function(_ServerTimeout value)? serverTimeout,
    TResult? Function(_UserNotFound value)? userNotFound,
    TResult? Function(_InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult? Function(_AccountLocked value)? accountLocked,
    TResult? Function(_AccountExpired value)? accountExpired,
    TResult? Function(_TokenExpired value)? tokenExpired,
    TResult? Function(_AuthenticationFailed value)? authenticationFailed,
  }) {
    return invalidEmailAndPasswordCombination?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Other value)? other,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_PoorConnection value)? poorConnection,
    TResult Function(_ServerTimeout value)? serverTimeout,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(_AccountLocked value)? accountLocked,
    TResult Function(_AccountExpired value)? accountExpired,
    TResult Function(_TokenExpired value)? tokenExpired,
    TResult Function(_AuthenticationFailed value)? authenticationFailed,
    required TResult orElse(),
  }) {
    if (invalidEmailAndPasswordCombination != null) {
      return invalidEmailAndPasswordCombination(this);
    }
    return orElse();
  }
}

abstract class _InvalidEmailAndPasswordCombination implements ApiFailure {
  const factory _InvalidEmailAndPasswordCombination() =
      _$InvalidEmailAndPasswordCombinationImpl;
}

/// @nodoc
abstract class _$$AccountLockedImplCopyWith<$Res> {
  factory _$$AccountLockedImplCopyWith(
          _$AccountLockedImpl value, $Res Function(_$AccountLockedImpl) then) =
      __$$AccountLockedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AccountLockedImplCopyWithImpl<$Res>
    extends _$ApiFailureCopyWithImpl<$Res, _$AccountLockedImpl>
    implements _$$AccountLockedImplCopyWith<$Res> {
  __$$AccountLockedImplCopyWithImpl(
      _$AccountLockedImpl _value, $Res Function(_$AccountLockedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AccountLockedImpl implements _AccountLocked {
  const _$AccountLockedImpl();

  @override
  String toString() {
    return 'ApiFailure.accountLocked()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AccountLockedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) other,
    required TResult Function(String message) serverError,
    required TResult Function() poorConnection,
    required TResult Function() serverTimeout,
    required TResult Function() userNotFound,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function() accountLocked,
    required TResult Function() accountExpired,
    required TResult Function() tokenExpired,
    required TResult Function() authenticationFailed,
  }) {
    return accountLocked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? other,
    TResult? Function(String message)? serverError,
    TResult? Function()? poorConnection,
    TResult? Function()? serverTimeout,
    TResult? Function()? userNotFound,
    TResult? Function()? invalidEmailAndPasswordCombination,
    TResult? Function()? accountLocked,
    TResult? Function()? accountExpired,
    TResult? Function()? tokenExpired,
    TResult? Function()? authenticationFailed,
  }) {
    return accountLocked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? other,
    TResult Function(String message)? serverError,
    TResult Function()? poorConnection,
    TResult Function()? serverTimeout,
    TResult Function()? userNotFound,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? accountLocked,
    TResult Function()? accountExpired,
    TResult Function()? tokenExpired,
    TResult Function()? authenticationFailed,
    required TResult orElse(),
  }) {
    if (accountLocked != null) {
      return accountLocked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Other value) other,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_PoorConnection value) poorConnection,
    required TResult Function(_ServerTimeout value) serverTimeout,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
    required TResult Function(_AccountLocked value) accountLocked,
    required TResult Function(_AccountExpired value) accountExpired,
    required TResult Function(_TokenExpired value) tokenExpired,
    required TResult Function(_AuthenticationFailed value) authenticationFailed,
  }) {
    return accountLocked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Other value)? other,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_PoorConnection value)? poorConnection,
    TResult? Function(_ServerTimeout value)? serverTimeout,
    TResult? Function(_UserNotFound value)? userNotFound,
    TResult? Function(_InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult? Function(_AccountLocked value)? accountLocked,
    TResult? Function(_AccountExpired value)? accountExpired,
    TResult? Function(_TokenExpired value)? tokenExpired,
    TResult? Function(_AuthenticationFailed value)? authenticationFailed,
  }) {
    return accountLocked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Other value)? other,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_PoorConnection value)? poorConnection,
    TResult Function(_ServerTimeout value)? serverTimeout,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(_AccountLocked value)? accountLocked,
    TResult Function(_AccountExpired value)? accountExpired,
    TResult Function(_TokenExpired value)? tokenExpired,
    TResult Function(_AuthenticationFailed value)? authenticationFailed,
    required TResult orElse(),
  }) {
    if (accountLocked != null) {
      return accountLocked(this);
    }
    return orElse();
  }
}

abstract class _AccountLocked implements ApiFailure {
  const factory _AccountLocked() = _$AccountLockedImpl;
}

/// @nodoc
abstract class _$$AccountExpiredImplCopyWith<$Res> {
  factory _$$AccountExpiredImplCopyWith(_$AccountExpiredImpl value,
          $Res Function(_$AccountExpiredImpl) then) =
      __$$AccountExpiredImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AccountExpiredImplCopyWithImpl<$Res>
    extends _$ApiFailureCopyWithImpl<$Res, _$AccountExpiredImpl>
    implements _$$AccountExpiredImplCopyWith<$Res> {
  __$$AccountExpiredImplCopyWithImpl(
      _$AccountExpiredImpl _value, $Res Function(_$AccountExpiredImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AccountExpiredImpl implements _AccountExpired {
  const _$AccountExpiredImpl();

  @override
  String toString() {
    return 'ApiFailure.accountExpired()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AccountExpiredImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) other,
    required TResult Function(String message) serverError,
    required TResult Function() poorConnection,
    required TResult Function() serverTimeout,
    required TResult Function() userNotFound,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function() accountLocked,
    required TResult Function() accountExpired,
    required TResult Function() tokenExpired,
    required TResult Function() authenticationFailed,
  }) {
    return accountExpired();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? other,
    TResult? Function(String message)? serverError,
    TResult? Function()? poorConnection,
    TResult? Function()? serverTimeout,
    TResult? Function()? userNotFound,
    TResult? Function()? invalidEmailAndPasswordCombination,
    TResult? Function()? accountLocked,
    TResult? Function()? accountExpired,
    TResult? Function()? tokenExpired,
    TResult? Function()? authenticationFailed,
  }) {
    return accountExpired?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? other,
    TResult Function(String message)? serverError,
    TResult Function()? poorConnection,
    TResult Function()? serverTimeout,
    TResult Function()? userNotFound,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? accountLocked,
    TResult Function()? accountExpired,
    TResult Function()? tokenExpired,
    TResult Function()? authenticationFailed,
    required TResult orElse(),
  }) {
    if (accountExpired != null) {
      return accountExpired();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Other value) other,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_PoorConnection value) poorConnection,
    required TResult Function(_ServerTimeout value) serverTimeout,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
    required TResult Function(_AccountLocked value) accountLocked,
    required TResult Function(_AccountExpired value) accountExpired,
    required TResult Function(_TokenExpired value) tokenExpired,
    required TResult Function(_AuthenticationFailed value) authenticationFailed,
  }) {
    return accountExpired(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Other value)? other,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_PoorConnection value)? poorConnection,
    TResult? Function(_ServerTimeout value)? serverTimeout,
    TResult? Function(_UserNotFound value)? userNotFound,
    TResult? Function(_InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult? Function(_AccountLocked value)? accountLocked,
    TResult? Function(_AccountExpired value)? accountExpired,
    TResult? Function(_TokenExpired value)? tokenExpired,
    TResult? Function(_AuthenticationFailed value)? authenticationFailed,
  }) {
    return accountExpired?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Other value)? other,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_PoorConnection value)? poorConnection,
    TResult Function(_ServerTimeout value)? serverTimeout,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(_AccountLocked value)? accountLocked,
    TResult Function(_AccountExpired value)? accountExpired,
    TResult Function(_TokenExpired value)? tokenExpired,
    TResult Function(_AuthenticationFailed value)? authenticationFailed,
    required TResult orElse(),
  }) {
    if (accountExpired != null) {
      return accountExpired(this);
    }
    return orElse();
  }
}

abstract class _AccountExpired implements ApiFailure {
  const factory _AccountExpired() = _$AccountExpiredImpl;
}

/// @nodoc
abstract class _$$TokenExpiredImplCopyWith<$Res> {
  factory _$$TokenExpiredImplCopyWith(
          _$TokenExpiredImpl value, $Res Function(_$TokenExpiredImpl) then) =
      __$$TokenExpiredImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TokenExpiredImplCopyWithImpl<$Res>
    extends _$ApiFailureCopyWithImpl<$Res, _$TokenExpiredImpl>
    implements _$$TokenExpiredImplCopyWith<$Res> {
  __$$TokenExpiredImplCopyWithImpl(
      _$TokenExpiredImpl _value, $Res Function(_$TokenExpiredImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TokenExpiredImpl implements _TokenExpired {
  const _$TokenExpiredImpl();

  @override
  String toString() {
    return 'ApiFailure.tokenExpired()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TokenExpiredImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) other,
    required TResult Function(String message) serverError,
    required TResult Function() poorConnection,
    required TResult Function() serverTimeout,
    required TResult Function() userNotFound,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function() accountLocked,
    required TResult Function() accountExpired,
    required TResult Function() tokenExpired,
    required TResult Function() authenticationFailed,
  }) {
    return tokenExpired();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? other,
    TResult? Function(String message)? serverError,
    TResult? Function()? poorConnection,
    TResult? Function()? serverTimeout,
    TResult? Function()? userNotFound,
    TResult? Function()? invalidEmailAndPasswordCombination,
    TResult? Function()? accountLocked,
    TResult? Function()? accountExpired,
    TResult? Function()? tokenExpired,
    TResult? Function()? authenticationFailed,
  }) {
    return tokenExpired?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? other,
    TResult Function(String message)? serverError,
    TResult Function()? poorConnection,
    TResult Function()? serverTimeout,
    TResult Function()? userNotFound,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? accountLocked,
    TResult Function()? accountExpired,
    TResult Function()? tokenExpired,
    TResult Function()? authenticationFailed,
    required TResult orElse(),
  }) {
    if (tokenExpired != null) {
      return tokenExpired();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Other value) other,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_PoorConnection value) poorConnection,
    required TResult Function(_ServerTimeout value) serverTimeout,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
    required TResult Function(_AccountLocked value) accountLocked,
    required TResult Function(_AccountExpired value) accountExpired,
    required TResult Function(_TokenExpired value) tokenExpired,
    required TResult Function(_AuthenticationFailed value) authenticationFailed,
  }) {
    return tokenExpired(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Other value)? other,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_PoorConnection value)? poorConnection,
    TResult? Function(_ServerTimeout value)? serverTimeout,
    TResult? Function(_UserNotFound value)? userNotFound,
    TResult? Function(_InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult? Function(_AccountLocked value)? accountLocked,
    TResult? Function(_AccountExpired value)? accountExpired,
    TResult? Function(_TokenExpired value)? tokenExpired,
    TResult? Function(_AuthenticationFailed value)? authenticationFailed,
  }) {
    return tokenExpired?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Other value)? other,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_PoorConnection value)? poorConnection,
    TResult Function(_ServerTimeout value)? serverTimeout,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(_AccountLocked value)? accountLocked,
    TResult Function(_AccountExpired value)? accountExpired,
    TResult Function(_TokenExpired value)? tokenExpired,
    TResult Function(_AuthenticationFailed value)? authenticationFailed,
    required TResult orElse(),
  }) {
    if (tokenExpired != null) {
      return tokenExpired(this);
    }
    return orElse();
  }
}

abstract class _TokenExpired implements ApiFailure {
  const factory _TokenExpired() = _$TokenExpiredImpl;
}

/// @nodoc
abstract class _$$AuthenticationFailedImplCopyWith<$Res> {
  factory _$$AuthenticationFailedImplCopyWith(_$AuthenticationFailedImpl value,
          $Res Function(_$AuthenticationFailedImpl) then) =
      __$$AuthenticationFailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticationFailedImplCopyWithImpl<$Res>
    extends _$ApiFailureCopyWithImpl<$Res, _$AuthenticationFailedImpl>
    implements _$$AuthenticationFailedImplCopyWith<$Res> {
  __$$AuthenticationFailedImplCopyWithImpl(_$AuthenticationFailedImpl _value,
      $Res Function(_$AuthenticationFailedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthenticationFailedImpl implements _AuthenticationFailed {
  const _$AuthenticationFailedImpl();

  @override
  String toString() {
    return 'ApiFailure.authenticationFailed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationFailedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) other,
    required TResult Function(String message) serverError,
    required TResult Function() poorConnection,
    required TResult Function() serverTimeout,
    required TResult Function() userNotFound,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function() accountLocked,
    required TResult Function() accountExpired,
    required TResult Function() tokenExpired,
    required TResult Function() authenticationFailed,
  }) {
    return authenticationFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? other,
    TResult? Function(String message)? serverError,
    TResult? Function()? poorConnection,
    TResult? Function()? serverTimeout,
    TResult? Function()? userNotFound,
    TResult? Function()? invalidEmailAndPasswordCombination,
    TResult? Function()? accountLocked,
    TResult? Function()? accountExpired,
    TResult? Function()? tokenExpired,
    TResult? Function()? authenticationFailed,
  }) {
    return authenticationFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? other,
    TResult Function(String message)? serverError,
    TResult Function()? poorConnection,
    TResult Function()? serverTimeout,
    TResult Function()? userNotFound,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? accountLocked,
    TResult Function()? accountExpired,
    TResult Function()? tokenExpired,
    TResult Function()? authenticationFailed,
    required TResult orElse(),
  }) {
    if (authenticationFailed != null) {
      return authenticationFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Other value) other,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_PoorConnection value) poorConnection,
    required TResult Function(_ServerTimeout value) serverTimeout,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
    required TResult Function(_AccountLocked value) accountLocked,
    required TResult Function(_AccountExpired value) accountExpired,
    required TResult Function(_TokenExpired value) tokenExpired,
    required TResult Function(_AuthenticationFailed value) authenticationFailed,
  }) {
    return authenticationFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Other value)? other,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_PoorConnection value)? poorConnection,
    TResult? Function(_ServerTimeout value)? serverTimeout,
    TResult? Function(_UserNotFound value)? userNotFound,
    TResult? Function(_InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult? Function(_AccountLocked value)? accountLocked,
    TResult? Function(_AccountExpired value)? accountExpired,
    TResult? Function(_TokenExpired value)? tokenExpired,
    TResult? Function(_AuthenticationFailed value)? authenticationFailed,
  }) {
    return authenticationFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Other value)? other,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_PoorConnection value)? poorConnection,
    TResult Function(_ServerTimeout value)? serverTimeout,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(_AccountLocked value)? accountLocked,
    TResult Function(_AccountExpired value)? accountExpired,
    TResult Function(_TokenExpired value)? tokenExpired,
    TResult Function(_AuthenticationFailed value)? authenticationFailed,
    required TResult orElse(),
  }) {
    if (authenticationFailed != null) {
      return authenticationFailed(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationFailed implements ApiFailure {
  const factory _AuthenticationFailed() = _$AuthenticationFailedImpl;
}
