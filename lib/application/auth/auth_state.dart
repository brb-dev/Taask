part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial({TaskUser? user}) = _Initial;
  const factory AuthState.loading({TaskUser? user}) = _Loading;
  const factory AuthState.authenticated({TaskUser? user}) = _Authenticated;
  const factory AuthState.unauthenticated({TaskUser? user}) = _Unauthenticated;
}
