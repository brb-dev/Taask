import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/auth/user/user_bloc.dart';
import '../../application/task/manage_task/manage_task_bloc.dart';
import '../../application/task/task_bloc.dart';
import '../../domain/core/dropdown/generic_dropdown_data.dart';
import '../../domain/core/utils/error_utils.dart';
import '../../domain/task/entities/task_entity.dart';
import '../../domain/task/value/value_objects.dart';
import '../core/widgets/dropdown/generic_dropdown.dart';
import '../core/widgets/form_field/generic_text_field.dart';
import '../core/widgets/loading_shimmer/loading_shimmer.dart';
import '../core/widgets/snackbar/custom_snackbar.dart';

@RoutePage()
class EditTaskScreen extends StatelessWidget {
  const EditTaskScreen({
    super.key,
    required this.task,
  });

  final TaskEntity task;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Task'),
        centerTitle: true,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 4,
      ),
      body: BlocConsumer<ManageTaskBloc, ManageTaskState>(
        listenWhen: (previous, current) =>
            previous.isSubmitting != current.isSubmitting,
        listener: (context, state) {
          state.failureOrSuccessOption.fold(
            () {
              if (!state.isSubmitting && state.isSuccess) {
                final taskState = context.read<TaskBloc>().state;
                context.read<ManageTaskBloc>().add(
                      ManageTaskEvent.setTaskData(
                        data: TaskEntity.empty(),
                      ),
                    );
                context.read<TaskBloc>().add(
                      TaskEvent.fetchTaskList(
                        user: context.read<UserBloc>().state.user,
                        filter: taskState.appliedFilter,
                        searchKey: taskState.searchKey,
                      ),
                    );
                CustomSnackBar(
                  messageText: 'Task has been edited',
                ).show(context);
              }
            },
            (either) => either.fold(
              (failure) {
                ErrorUtils.handleApiFailure(context, failure);
              },
              (success) {},
            ),
          );
        },
        buildWhen: (previous, current) =>
            previous.showErrorMessages != current.showErrorMessages ||
            previous.isSubmitting != current.isSubmitting,
        builder: (context, state) {
          return SingleChildScrollView(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
            ),
            child: Form(
              autovalidateMode: state.showErrorMessages
                  ? AutovalidateMode.always
                  : AutovalidateMode.disabled,
              child: Column(
                children: [
                  GenericDropdown(
                    key: const Key('taskStatusKey'),
                    labelText: '',
                    validator: (text) => TaskTitle(text ?? '').value.fold(
                          (f) => f.maybeMap(
                            empty: (_) => 'Task status cannot be empty.',
                            orElse: () => null,
                          ),
                          (_) => null,
                        ),
                    onChanged: (val) => context.read<ManageTaskBloc>().add(
                          ManageTaskEvent.onValueChange(
                            label: TaskLebel.status,
                            newValue: val ?? '',
                          ),
                        ),
                    items: ['To Do', 'In Progress', 'Done']
                        .map(
                          (val) => GenericDropdownData(
                            value: val,
                            label: val,
                          ),
                        )
                        .toList(),
                    isSubmitting: false,
                    value: context
                        .read<ManageTaskBloc>()
                        .state
                        .task
                        .status
                        .getOrDefaultValue(''),
                    isDisabled: state.isSubmitting,
                  ),
                  const SizedBox(height: 20),
                  GenericTextField(
                    fieldKey: 'taskTitleKey',
                    labelText: 'Task Title',
                    validator: (text) => TaskTitle(text ?? '').value.fold(
                          (f) => f.maybeMap(
                            empty: (_) => 'Task title cannot be empty.',
                            orElse: () => null,
                          ),
                          (_) => null,
                        ),
                    onChanged: (val) => context.read<ManageTaskBloc>().add(
                          ManageTaskEvent.onValueChange(
                            label: TaskLebel.title,
                            newValue: val ?? '',
                          ),
                        ),
                    isEnabled: !state.isSubmitting,
                    value: context
                        .read<ManageTaskBloc>()
                        .state
                        .task
                        .title
                        .getOrDefaultValue(''),
                  ),
                  const SizedBox(height: 20),
                  GenericTextField(
                    fieldKey: 'taskDescriptionKey',
                    labelText: 'Task Description',
                    validator: (text) => TaskDescription(text ?? '').value.fold(
                          (f) => f.maybeMap(
                            empty: (_) => 'Task description cannot be empty.',
                            orElse: () => null,
                          ),
                          (_) => null,
                        ),
                    onChanged: (val) => context.read<ManageTaskBloc>().add(
                          ManageTaskEvent.onValueChange(
                            label: TaskLebel.description,
                            newValue: val ?? '',
                          ),
                        ),
                    isEnabled: !state.isSubmitting,
                    value: context
                        .read<ManageTaskBloc>()
                        .state
                        .task
                        .description
                        .getOrDefaultValue(''),
                  ),
                  const SizedBox(height: 20),
                  const _EditTaskButton()
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _EditTaskButton extends StatelessWidget {
  const _EditTaskButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ManageTaskBloc, ManageTaskState>(
      buildWhen: (previous, current) =>
          previous.isSubmitting != current.isSubmitting,
      builder: (context, state) {
        return ElevatedButton(
          key: const Key('editTaskButton'),
          onPressed: state.isSubmitting
              ? null
              : () {
                  FocusScope.of(context).unfocus();
                  context.read<ManageTaskBloc>().add(
                        const ManageTaskEvent.addOrEditTask(),
                      );
                },
          child: LoadingShimmer.withChild(
            enabled: state.isSubmitting,
            child: const Text('Edit Task'),
          ),
        );
      },
    );
  }
}
