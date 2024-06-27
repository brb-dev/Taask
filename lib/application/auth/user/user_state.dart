part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const UserState._();

  const factory UserState({
    required TaskUser user,
    required bool isEdit,
    required Option<Either<ApiFailure, dynamic>> userFailureOrSuccessOption,
  }) = _UserState;

  factory UserState.initial() => UserState(
        user: TaskUser.empty(),
        isEdit: false,
        userFailureOrSuccessOption: none(),
      );
}
