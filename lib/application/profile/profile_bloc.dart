import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(ProfileState.initial()) {
    on<ProfileEvent>(_onEvent);
  }

  Future<void> _onEvent(
    ProfileEvent event,
    Emitter<ProfileState> emit,
  ) async {
    await event.map(
      initialize: (e) async => emit(
        ProfileState.initial(),
      ),
      changeMode: (e) async {
        emit(
          state.copyWith(
            isEditMode: !state.isEditMode,
          ),
        );
      },
    );
  }
}
