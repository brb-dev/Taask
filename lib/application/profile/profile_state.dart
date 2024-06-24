part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const ProfileState._();

  const factory ProfileState({
    required bool isEditMode,
  }) = _ProfileState;

  factory ProfileState.initial() => const ProfileState(
        isEditMode: false,
      );
}
