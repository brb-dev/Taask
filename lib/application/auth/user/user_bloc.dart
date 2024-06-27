import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/auth/entities/task_user.dart';
import '../../../domain/auth/repositories/i_auth_repository.dart';
import '../../../domain/core/error/api_failure.dart';

part 'user_bloc.freezed.dart';
part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final IAuthRepository repository;

  UserBloc({
    required this.repository,
  }) : super(UserState.initial()) {
    on<UserEvent>(_onEvent);
  }

  Future<void> _onEvent(UserEvent event, Emitter<UserState> emit) async {
    await event.map(
      initialized: (e) async => emit(UserState.initial()),
      fetch: (e) async {
        final failureOrSuccess = await repository.fetchUser();
        failureOrSuccess.fold(
          (failure) => emit(
            state.copyWith(
              userFailureOrSuccessOption: optionOf(failureOrSuccess),
            ),
          ),
          (user) => emit(
            state.copyWith(
              user: user,
              userFailureOrSuccessOption: none(),
            ),
          ),
        );
      },
      changeMode: (_) async => emit(
        state.copyWith(
          isEdit: !state.isEdit,
        ),
      ),
    );
  }

  @override
  void onChange(Change<UserState> change) {
    super.onChange(change);
  }
}
