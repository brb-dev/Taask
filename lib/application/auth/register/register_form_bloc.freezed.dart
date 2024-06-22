// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String usernameStr) userNameChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() passwordVisibilityChanged,
    required TResult Function(String confirmPasswordStr) confirmPasswordChanged,
    required TResult Function() confirmPasswordVisibilityChanged,
    required TResult Function() registerWithEmailAndPasswordPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String usernameStr)? userNameChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function()? passwordVisibilityChanged,
    TResult? Function(String confirmPasswordStr)? confirmPasswordChanged,
    TResult? Function()? confirmPasswordVisibilityChanged,
    TResult? Function()? registerWithEmailAndPasswordPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String usernameStr)? userNameChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? passwordVisibilityChanged,
    TResult Function(String confirmPasswordStr)? confirmPasswordChanged,
    TResult Function()? confirmPasswordVisibilityChanged,
    TResult Function()? registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_UserNameChanged value) userNameChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PasswordVisibleChanged value)
        passwordVisibilityChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_ConfirmPasswordVisibleChanged value)
        confirmPasswordVisibilityChanged,
    required TResult Function(_RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_UserNameChanged value)? userNameChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_PasswordVisibleChanged value)? passwordVisibilityChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_ConfirmPasswordVisibleChanged value)?
        confirmPasswordVisibilityChanged,
    TResult? Function(_RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_UserNameChanged value)? userNameChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordVisibleChanged value)? passwordVisibilityChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_ConfirmPasswordVisibleChanged value)?
        confirmPasswordVisibilityChanged,
    TResult Function(_RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterFormEventCopyWith<$Res> {
  factory $RegisterFormEventCopyWith(
          RegisterFormEvent value, $Res Function(RegisterFormEvent) then) =
      _$RegisterFormEventCopyWithImpl<$Res, RegisterFormEvent>;
}

/// @nodoc
class _$RegisterFormEventCopyWithImpl<$Res, $Val extends RegisterFormEvent>
    implements $RegisterFormEventCopyWith<$Res> {
  _$RegisterFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EmailChangedImplCopyWith<$Res> {
  factory _$$EmailChangedImplCopyWith(
          _$EmailChangedImpl value, $Res Function(_$EmailChangedImpl) then) =
      __$$EmailChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String emailStr});
}

/// @nodoc
class __$$EmailChangedImplCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res, _$EmailChangedImpl>
    implements _$$EmailChangedImplCopyWith<$Res> {
  __$$EmailChangedImplCopyWithImpl(
      _$EmailChangedImpl _value, $Res Function(_$EmailChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailStr = null,
  }) {
    return _then(_$EmailChangedImpl(
      null == emailStr
          ? _value.emailStr
          : emailStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChangedImpl implements _EmailChanged {
  const _$EmailChangedImpl(this.emailStr);

  @override
  final String emailStr;

  @override
  String toString() {
    return 'RegisterFormEvent.emailChanged(emailStr: $emailStr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailChangedImpl &&
            (identical(other.emailStr, emailStr) ||
                other.emailStr == emailStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      __$$EmailChangedImplCopyWithImpl<_$EmailChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String usernameStr) userNameChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() passwordVisibilityChanged,
    required TResult Function(String confirmPasswordStr) confirmPasswordChanged,
    required TResult Function() confirmPasswordVisibilityChanged,
    required TResult Function() registerWithEmailAndPasswordPressed,
  }) {
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String usernameStr)? userNameChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function()? passwordVisibilityChanged,
    TResult? Function(String confirmPasswordStr)? confirmPasswordChanged,
    TResult? Function()? confirmPasswordVisibilityChanged,
    TResult? Function()? registerWithEmailAndPasswordPressed,
  }) {
    return emailChanged?.call(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String usernameStr)? userNameChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? passwordVisibilityChanged,
    TResult Function(String confirmPasswordStr)? confirmPasswordChanged,
    TResult Function()? confirmPasswordVisibilityChanged,
    TResult Function()? registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_UserNameChanged value) userNameChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PasswordVisibleChanged value)
        passwordVisibilityChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_ConfirmPasswordVisibleChanged value)
        confirmPasswordVisibilityChanged,
    required TResult Function(_RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_UserNameChanged value)? userNameChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_PasswordVisibleChanged value)? passwordVisibilityChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_ConfirmPasswordVisibleChanged value)?
        confirmPasswordVisibilityChanged,
    TResult? Function(_RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_UserNameChanged value)? userNameChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordVisibleChanged value)? passwordVisibilityChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_ConfirmPasswordVisibleChanged value)?
        confirmPasswordVisibilityChanged,
    TResult Function(_RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements RegisterFormEvent {
  const factory _EmailChanged(final String emailStr) = _$EmailChangedImpl;

  String get emailStr;
  @JsonKey(ignore: true)
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserNameChangedImplCopyWith<$Res> {
  factory _$$UserNameChangedImplCopyWith(_$UserNameChangedImpl value,
          $Res Function(_$UserNameChangedImpl) then) =
      __$$UserNameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String usernameStr});
}

/// @nodoc
class __$$UserNameChangedImplCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res, _$UserNameChangedImpl>
    implements _$$UserNameChangedImplCopyWith<$Res> {
  __$$UserNameChangedImplCopyWithImpl(
      _$UserNameChangedImpl _value, $Res Function(_$UserNameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usernameStr = null,
  }) {
    return _then(_$UserNameChangedImpl(
      null == usernameStr
          ? _value.usernameStr
          : usernameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserNameChangedImpl implements _UserNameChanged {
  const _$UserNameChangedImpl(this.usernameStr);

  @override
  final String usernameStr;

  @override
  String toString() {
    return 'RegisterFormEvent.userNameChanged(usernameStr: $usernameStr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserNameChangedImpl &&
            (identical(other.usernameStr, usernameStr) ||
                other.usernameStr == usernameStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, usernameStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserNameChangedImplCopyWith<_$UserNameChangedImpl> get copyWith =>
      __$$UserNameChangedImplCopyWithImpl<_$UserNameChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String usernameStr) userNameChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() passwordVisibilityChanged,
    required TResult Function(String confirmPasswordStr) confirmPasswordChanged,
    required TResult Function() confirmPasswordVisibilityChanged,
    required TResult Function() registerWithEmailAndPasswordPressed,
  }) {
    return userNameChanged(usernameStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String usernameStr)? userNameChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function()? passwordVisibilityChanged,
    TResult? Function(String confirmPasswordStr)? confirmPasswordChanged,
    TResult? Function()? confirmPasswordVisibilityChanged,
    TResult? Function()? registerWithEmailAndPasswordPressed,
  }) {
    return userNameChanged?.call(usernameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String usernameStr)? userNameChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? passwordVisibilityChanged,
    TResult Function(String confirmPasswordStr)? confirmPasswordChanged,
    TResult Function()? confirmPasswordVisibilityChanged,
    TResult Function()? registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (userNameChanged != null) {
      return userNameChanged(usernameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_UserNameChanged value) userNameChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PasswordVisibleChanged value)
        passwordVisibilityChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_ConfirmPasswordVisibleChanged value)
        confirmPasswordVisibilityChanged,
    required TResult Function(_RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
  }) {
    return userNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_UserNameChanged value)? userNameChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_PasswordVisibleChanged value)? passwordVisibilityChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_ConfirmPasswordVisibleChanged value)?
        confirmPasswordVisibilityChanged,
    TResult? Function(_RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
  }) {
    return userNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_UserNameChanged value)? userNameChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordVisibleChanged value)? passwordVisibilityChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_ConfirmPasswordVisibleChanged value)?
        confirmPasswordVisibilityChanged,
    TResult Function(_RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (userNameChanged != null) {
      return userNameChanged(this);
    }
    return orElse();
  }
}

abstract class _UserNameChanged implements RegisterFormEvent {
  const factory _UserNameChanged(final String usernameStr) =
      _$UserNameChangedImpl;

  String get usernameStr;
  @JsonKey(ignore: true)
  _$$UserNameChangedImplCopyWith<_$UserNameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordChangedImplCopyWith<$Res> {
  factory _$$PasswordChangedImplCopyWith(_$PasswordChangedImpl value,
          $Res Function(_$PasswordChangedImpl) then) =
      __$$PasswordChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String passwordStr});
}

/// @nodoc
class __$$PasswordChangedImplCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res, _$PasswordChangedImpl>
    implements _$$PasswordChangedImplCopyWith<$Res> {
  __$$PasswordChangedImplCopyWithImpl(
      _$PasswordChangedImpl _value, $Res Function(_$PasswordChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passwordStr = null,
  }) {
    return _then(_$PasswordChangedImpl(
      null == passwordStr
          ? _value.passwordStr
          : passwordStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChangedImpl implements _PasswordChanged {
  const _$PasswordChangedImpl(this.passwordStr);

  @override
  final String passwordStr;

  @override
  String toString() {
    return 'RegisterFormEvent.passwordChanged(passwordStr: $passwordStr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChangedImpl &&
            (identical(other.passwordStr, passwordStr) ||
                other.passwordStr == passwordStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, passwordStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
      __$$PasswordChangedImplCopyWithImpl<_$PasswordChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String usernameStr) userNameChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() passwordVisibilityChanged,
    required TResult Function(String confirmPasswordStr) confirmPasswordChanged,
    required TResult Function() confirmPasswordVisibilityChanged,
    required TResult Function() registerWithEmailAndPasswordPressed,
  }) {
    return passwordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String usernameStr)? userNameChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function()? passwordVisibilityChanged,
    TResult? Function(String confirmPasswordStr)? confirmPasswordChanged,
    TResult? Function()? confirmPasswordVisibilityChanged,
    TResult? Function()? registerWithEmailAndPasswordPressed,
  }) {
    return passwordChanged?.call(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String usernameStr)? userNameChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? passwordVisibilityChanged,
    TResult Function(String confirmPasswordStr)? confirmPasswordChanged,
    TResult Function()? confirmPasswordVisibilityChanged,
    TResult Function()? registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_UserNameChanged value) userNameChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PasswordVisibleChanged value)
        passwordVisibilityChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_ConfirmPasswordVisibleChanged value)
        confirmPasswordVisibilityChanged,
    required TResult Function(_RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_UserNameChanged value)? userNameChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_PasswordVisibleChanged value)? passwordVisibilityChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_ConfirmPasswordVisibleChanged value)?
        confirmPasswordVisibilityChanged,
    TResult? Function(_RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_UserNameChanged value)? userNameChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordVisibleChanged value)? passwordVisibilityChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_ConfirmPasswordVisibleChanged value)?
        confirmPasswordVisibilityChanged,
    TResult Function(_RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements RegisterFormEvent {
  const factory _PasswordChanged(final String passwordStr) =
      _$PasswordChangedImpl;

  String get passwordStr;
  @JsonKey(ignore: true)
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordVisibleChangedImplCopyWith<$Res> {
  factory _$$PasswordVisibleChangedImplCopyWith(
          _$PasswordVisibleChangedImpl value,
          $Res Function(_$PasswordVisibleChangedImpl) then) =
      __$$PasswordVisibleChangedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PasswordVisibleChangedImplCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res, _$PasswordVisibleChangedImpl>
    implements _$$PasswordVisibleChangedImplCopyWith<$Res> {
  __$$PasswordVisibleChangedImplCopyWithImpl(
      _$PasswordVisibleChangedImpl _value,
      $Res Function(_$PasswordVisibleChangedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PasswordVisibleChangedImpl implements _PasswordVisibleChanged {
  const _$PasswordVisibleChangedImpl();

  @override
  String toString() {
    return 'RegisterFormEvent.passwordVisibilityChanged()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordVisibleChangedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String usernameStr) userNameChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() passwordVisibilityChanged,
    required TResult Function(String confirmPasswordStr) confirmPasswordChanged,
    required TResult Function() confirmPasswordVisibilityChanged,
    required TResult Function() registerWithEmailAndPasswordPressed,
  }) {
    return passwordVisibilityChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String usernameStr)? userNameChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function()? passwordVisibilityChanged,
    TResult? Function(String confirmPasswordStr)? confirmPasswordChanged,
    TResult? Function()? confirmPasswordVisibilityChanged,
    TResult? Function()? registerWithEmailAndPasswordPressed,
  }) {
    return passwordVisibilityChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String usernameStr)? userNameChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? passwordVisibilityChanged,
    TResult Function(String confirmPasswordStr)? confirmPasswordChanged,
    TResult Function()? confirmPasswordVisibilityChanged,
    TResult Function()? registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (passwordVisibilityChanged != null) {
      return passwordVisibilityChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_UserNameChanged value) userNameChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PasswordVisibleChanged value)
        passwordVisibilityChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_ConfirmPasswordVisibleChanged value)
        confirmPasswordVisibilityChanged,
    required TResult Function(_RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
  }) {
    return passwordVisibilityChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_UserNameChanged value)? userNameChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_PasswordVisibleChanged value)? passwordVisibilityChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_ConfirmPasswordVisibleChanged value)?
        confirmPasswordVisibilityChanged,
    TResult? Function(_RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
  }) {
    return passwordVisibilityChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_UserNameChanged value)? userNameChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordVisibleChanged value)? passwordVisibilityChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_ConfirmPasswordVisibleChanged value)?
        confirmPasswordVisibilityChanged,
    TResult Function(_RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (passwordVisibilityChanged != null) {
      return passwordVisibilityChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordVisibleChanged implements RegisterFormEvent {
  const factory _PasswordVisibleChanged() = _$PasswordVisibleChangedImpl;
}

/// @nodoc
abstract class _$$ConfirmPasswordChangedImplCopyWith<$Res> {
  factory _$$ConfirmPasswordChangedImplCopyWith(
          _$ConfirmPasswordChangedImpl value,
          $Res Function(_$ConfirmPasswordChangedImpl) then) =
      __$$ConfirmPasswordChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String confirmPasswordStr});
}

/// @nodoc
class __$$ConfirmPasswordChangedImplCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res, _$ConfirmPasswordChangedImpl>
    implements _$$ConfirmPasswordChangedImplCopyWith<$Res> {
  __$$ConfirmPasswordChangedImplCopyWithImpl(
      _$ConfirmPasswordChangedImpl _value,
      $Res Function(_$ConfirmPasswordChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? confirmPasswordStr = null,
  }) {
    return _then(_$ConfirmPasswordChangedImpl(
      null == confirmPasswordStr
          ? _value.confirmPasswordStr
          : confirmPasswordStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConfirmPasswordChangedImpl implements _ConfirmPasswordChanged {
  const _$ConfirmPasswordChangedImpl(this.confirmPasswordStr);

  @override
  final String confirmPasswordStr;

  @override
  String toString() {
    return 'RegisterFormEvent.confirmPasswordChanged(confirmPasswordStr: $confirmPasswordStr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmPasswordChangedImpl &&
            (identical(other.confirmPasswordStr, confirmPasswordStr) ||
                other.confirmPasswordStr == confirmPasswordStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, confirmPasswordStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmPasswordChangedImplCopyWith<_$ConfirmPasswordChangedImpl>
      get copyWith => __$$ConfirmPasswordChangedImplCopyWithImpl<
          _$ConfirmPasswordChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String usernameStr) userNameChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() passwordVisibilityChanged,
    required TResult Function(String confirmPasswordStr) confirmPasswordChanged,
    required TResult Function() confirmPasswordVisibilityChanged,
    required TResult Function() registerWithEmailAndPasswordPressed,
  }) {
    return confirmPasswordChanged(confirmPasswordStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String usernameStr)? userNameChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function()? passwordVisibilityChanged,
    TResult? Function(String confirmPasswordStr)? confirmPasswordChanged,
    TResult? Function()? confirmPasswordVisibilityChanged,
    TResult? Function()? registerWithEmailAndPasswordPressed,
  }) {
    return confirmPasswordChanged?.call(confirmPasswordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String usernameStr)? userNameChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? passwordVisibilityChanged,
    TResult Function(String confirmPasswordStr)? confirmPasswordChanged,
    TResult Function()? confirmPasswordVisibilityChanged,
    TResult Function()? registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (confirmPasswordChanged != null) {
      return confirmPasswordChanged(confirmPasswordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_UserNameChanged value) userNameChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PasswordVisibleChanged value)
        passwordVisibilityChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_ConfirmPasswordVisibleChanged value)
        confirmPasswordVisibilityChanged,
    required TResult Function(_RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
  }) {
    return confirmPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_UserNameChanged value)? userNameChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_PasswordVisibleChanged value)? passwordVisibilityChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_ConfirmPasswordVisibleChanged value)?
        confirmPasswordVisibilityChanged,
    TResult? Function(_RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
  }) {
    return confirmPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_UserNameChanged value)? userNameChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordVisibleChanged value)? passwordVisibilityChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_ConfirmPasswordVisibleChanged value)?
        confirmPasswordVisibilityChanged,
    TResult Function(_RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (confirmPasswordChanged != null) {
      return confirmPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class _ConfirmPasswordChanged implements RegisterFormEvent {
  const factory _ConfirmPasswordChanged(final String confirmPasswordStr) =
      _$ConfirmPasswordChangedImpl;

  String get confirmPasswordStr;
  @JsonKey(ignore: true)
  _$$ConfirmPasswordChangedImplCopyWith<_$ConfirmPasswordChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConfirmPasswordVisibleChangedImplCopyWith<$Res> {
  factory _$$ConfirmPasswordVisibleChangedImplCopyWith(
          _$ConfirmPasswordVisibleChangedImpl value,
          $Res Function(_$ConfirmPasswordVisibleChangedImpl) then) =
      __$$ConfirmPasswordVisibleChangedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConfirmPasswordVisibleChangedImplCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res,
        _$ConfirmPasswordVisibleChangedImpl>
    implements _$$ConfirmPasswordVisibleChangedImplCopyWith<$Res> {
  __$$ConfirmPasswordVisibleChangedImplCopyWithImpl(
      _$ConfirmPasswordVisibleChangedImpl _value,
      $Res Function(_$ConfirmPasswordVisibleChangedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ConfirmPasswordVisibleChangedImpl
    implements _ConfirmPasswordVisibleChanged {
  const _$ConfirmPasswordVisibleChangedImpl();

  @override
  String toString() {
    return 'RegisterFormEvent.confirmPasswordVisibilityChanged()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmPasswordVisibleChangedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String usernameStr) userNameChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() passwordVisibilityChanged,
    required TResult Function(String confirmPasswordStr) confirmPasswordChanged,
    required TResult Function() confirmPasswordVisibilityChanged,
    required TResult Function() registerWithEmailAndPasswordPressed,
  }) {
    return confirmPasswordVisibilityChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String usernameStr)? userNameChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function()? passwordVisibilityChanged,
    TResult? Function(String confirmPasswordStr)? confirmPasswordChanged,
    TResult? Function()? confirmPasswordVisibilityChanged,
    TResult? Function()? registerWithEmailAndPasswordPressed,
  }) {
    return confirmPasswordVisibilityChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String usernameStr)? userNameChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? passwordVisibilityChanged,
    TResult Function(String confirmPasswordStr)? confirmPasswordChanged,
    TResult Function()? confirmPasswordVisibilityChanged,
    TResult Function()? registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (confirmPasswordVisibilityChanged != null) {
      return confirmPasswordVisibilityChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_UserNameChanged value) userNameChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PasswordVisibleChanged value)
        passwordVisibilityChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_ConfirmPasswordVisibleChanged value)
        confirmPasswordVisibilityChanged,
    required TResult Function(_RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
  }) {
    return confirmPasswordVisibilityChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_UserNameChanged value)? userNameChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_PasswordVisibleChanged value)? passwordVisibilityChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_ConfirmPasswordVisibleChanged value)?
        confirmPasswordVisibilityChanged,
    TResult? Function(_RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
  }) {
    return confirmPasswordVisibilityChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_UserNameChanged value)? userNameChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordVisibleChanged value)? passwordVisibilityChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_ConfirmPasswordVisibleChanged value)?
        confirmPasswordVisibilityChanged,
    TResult Function(_RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (confirmPasswordVisibilityChanged != null) {
      return confirmPasswordVisibilityChanged(this);
    }
    return orElse();
  }
}

abstract class _ConfirmPasswordVisibleChanged implements RegisterFormEvent {
  const factory _ConfirmPasswordVisibleChanged() =
      _$ConfirmPasswordVisibleChangedImpl;
}

/// @nodoc
abstract class _$$RegisterWithEmailAndPasswordPressedImplCopyWith<$Res> {
  factory _$$RegisterWithEmailAndPasswordPressedImplCopyWith(
          _$RegisterWithEmailAndPasswordPressedImpl value,
          $Res Function(_$RegisterWithEmailAndPasswordPressedImpl) then) =
      __$$RegisterWithEmailAndPasswordPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterWithEmailAndPasswordPressedImplCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res,
        _$RegisterWithEmailAndPasswordPressedImpl>
    implements _$$RegisterWithEmailAndPasswordPressedImplCopyWith<$Res> {
  __$$RegisterWithEmailAndPasswordPressedImplCopyWithImpl(
      _$RegisterWithEmailAndPasswordPressedImpl _value,
      $Res Function(_$RegisterWithEmailAndPasswordPressedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegisterWithEmailAndPasswordPressedImpl
    implements _RegisterWithEmailAndPasswordPressed {
  const _$RegisterWithEmailAndPasswordPressedImpl();

  @override
  String toString() {
    return 'RegisterFormEvent.registerWithEmailAndPasswordPressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterWithEmailAndPasswordPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String usernameStr) userNameChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() passwordVisibilityChanged,
    required TResult Function(String confirmPasswordStr) confirmPasswordChanged,
    required TResult Function() confirmPasswordVisibilityChanged,
    required TResult Function() registerWithEmailAndPasswordPressed,
  }) {
    return registerWithEmailAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String usernameStr)? userNameChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function()? passwordVisibilityChanged,
    TResult? Function(String confirmPasswordStr)? confirmPasswordChanged,
    TResult? Function()? confirmPasswordVisibilityChanged,
    TResult? Function()? registerWithEmailAndPasswordPressed,
  }) {
    return registerWithEmailAndPasswordPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String usernameStr)? userNameChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? passwordVisibilityChanged,
    TResult Function(String confirmPasswordStr)? confirmPasswordChanged,
    TResult Function()? confirmPasswordVisibilityChanged,
    TResult Function()? registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (registerWithEmailAndPasswordPressed != null) {
      return registerWithEmailAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_UserNameChanged value) userNameChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PasswordVisibleChanged value)
        passwordVisibilityChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_ConfirmPasswordVisibleChanged value)
        confirmPasswordVisibilityChanged,
    required TResult Function(_RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
  }) {
    return registerWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_UserNameChanged value)? userNameChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_PasswordVisibleChanged value)? passwordVisibilityChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_ConfirmPasswordVisibleChanged value)?
        confirmPasswordVisibilityChanged,
    TResult? Function(_RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
  }) {
    return registerWithEmailAndPasswordPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_UserNameChanged value)? userNameChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordVisibleChanged value)? passwordVisibilityChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_ConfirmPasswordVisibleChanged value)?
        confirmPasswordVisibilityChanged,
    TResult Function(_RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (registerWithEmailAndPasswordPressed != null) {
      return registerWithEmailAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class _RegisterWithEmailAndPasswordPressed
    implements RegisterFormEvent {
  const factory _RegisterWithEmailAndPasswordPressed() =
      _$RegisterWithEmailAndPasswordPressedImpl;
}

/// @nodoc
mixin _$RegisterFormState {
  EmailAddress get email => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  Password get confirmPassword => throw _privateConstructorUsedError;
  Username get username => throw _privateConstructorUsedError;
  bool get passwordVisible => throw _privateConstructorUsedError;
  bool get confirmPasswordVisible => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<ApiFailure, dynamic>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterFormStateCopyWith<RegisterFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterFormStateCopyWith<$Res> {
  factory $RegisterFormStateCopyWith(
          RegisterFormState value, $Res Function(RegisterFormState) then) =
      _$RegisterFormStateCopyWithImpl<$Res, RegisterFormState>;
  @useResult
  $Res call(
      {EmailAddress email,
      Password password,
      Password confirmPassword,
      Username username,
      bool passwordVisible,
      bool confirmPasswordVisible,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<ApiFailure, dynamic>> authFailureOrSuccessOption});
}

/// @nodoc
class _$RegisterFormStateCopyWithImpl<$Res, $Val extends RegisterFormState>
    implements $RegisterFormStateCopyWith<$Res> {
  _$RegisterFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? username = null,
    Object? passwordVisible = null,
    Object? confirmPasswordVisible = null,
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Username,
      passwordVisible: null == passwordVisible
          ? _value.passwordVisible
          : passwordVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      confirmPasswordVisible: null == confirmPasswordVisible
          ? _value.confirmPasswordVisible
          : confirmPasswordVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterFormStateImplCopyWith<$Res>
    implements $RegisterFormStateCopyWith<$Res> {
  factory _$$RegisterFormStateImplCopyWith(_$RegisterFormStateImpl value,
          $Res Function(_$RegisterFormStateImpl) then) =
      __$$RegisterFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EmailAddress email,
      Password password,
      Password confirmPassword,
      Username username,
      bool passwordVisible,
      bool confirmPasswordVisible,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<ApiFailure, dynamic>> authFailureOrSuccessOption});
}

/// @nodoc
class __$$RegisterFormStateImplCopyWithImpl<$Res>
    extends _$RegisterFormStateCopyWithImpl<$Res, _$RegisterFormStateImpl>
    implements _$$RegisterFormStateImplCopyWith<$Res> {
  __$$RegisterFormStateImplCopyWithImpl(_$RegisterFormStateImpl _value,
      $Res Function(_$RegisterFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? username = null,
    Object? passwordVisible = null,
    Object? confirmPasswordVisible = null,
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_$RegisterFormStateImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Username,
      passwordVisible: null == passwordVisible
          ? _value.passwordVisible
          : passwordVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      confirmPasswordVisible: null == confirmPasswordVisible
          ? _value.confirmPasswordVisible
          : confirmPasswordVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
    ));
  }
}

/// @nodoc

class _$RegisterFormStateImpl extends _RegisterFormState {
  const _$RegisterFormStateImpl(
      {required this.email,
      required this.password,
      required this.confirmPassword,
      required this.username,
      required this.passwordVisible,
      required this.confirmPasswordVisible,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.authFailureOrSuccessOption})
      : super._();

  @override
  final EmailAddress email;
  @override
  final Password password;
  @override
  final Password confirmPassword;
  @override
  final Username username;
  @override
  final bool passwordVisible;
  @override
  final bool confirmPasswordVisible;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<ApiFailure, dynamic>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'RegisterFormState(email: $email, password: $password, confirmPassword: $confirmPassword, username: $username, passwordVisible: $passwordVisible, confirmPasswordVisible: $confirmPasswordVisible, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterFormStateImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.passwordVisible, passwordVisible) ||
                other.passwordVisible == passwordVisible) &&
            (identical(other.confirmPasswordVisible, confirmPasswordVisible) ||
                other.confirmPasswordVisible == confirmPasswordVisible) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                other.authFailureOrSuccessOption ==
                    authFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      email,
      password,
      confirmPassword,
      username,
      passwordVisible,
      confirmPasswordVisible,
      showErrorMessages,
      isSubmitting,
      authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterFormStateImplCopyWith<_$RegisterFormStateImpl> get copyWith =>
      __$$RegisterFormStateImplCopyWithImpl<_$RegisterFormStateImpl>(
          this, _$identity);
}

abstract class _RegisterFormState extends RegisterFormState {
  const factory _RegisterFormState(
      {required final EmailAddress email,
      required final Password password,
      required final Password confirmPassword,
      required final Username username,
      required final bool passwordVisible,
      required final bool confirmPasswordVisible,
      required final bool showErrorMessages,
      required final bool isSubmitting,
      required final Option<Either<ApiFailure, dynamic>>
          authFailureOrSuccessOption}) = _$RegisterFormStateImpl;
  const _RegisterFormState._() : super._();

  @override
  EmailAddress get email;
  @override
  Password get password;
  @override
  Password get confirmPassword;
  @override
  Username get username;
  @override
  bool get passwordVisible;
  @override
  bool get confirmPasswordVisible;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<ApiFailure, dynamic>> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$RegisterFormStateImplCopyWith<_$RegisterFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
