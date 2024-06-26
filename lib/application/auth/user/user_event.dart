part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.initialized() = _Initialized;
  const factory UserEvent.fetch() = _Fetch;
  const factory UserEvent.changeMode() = _ChangeMode;
}
