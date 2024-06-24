part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.initialize() = _Initialized;
  const factory ProfileEvent.changeMode() = _ChangeMode;
}
