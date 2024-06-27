import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/auth/user/user_bloc.dart';
import '../../application/task/manage_task/manage_task_bloc.dart';
import '../../application/task/task_bloc.dart';
import '../../domain/core/dropdown/generic_dropdown_data.dart';
import '../../domain/core/utils/error_utils.dart';
import '../../domain/task/entities/task_entity.dart';
import '../core/widgets/dropdown/generic_dropdown.dart';
import '../core/widgets/form_field/generic_text_field.dart';
import '../core/widgets/loading_shimmer/loading_shimmer.dart';
import '../core/widgets/snackbar/custom_snackbar.dart';

@RoutePage()
class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  void _handleListener({
    required BuildContext context,
    required ManageTaskState state,
  }) {
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
            messageText: 'Task has been added',
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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Task'),
        centerTitle: true,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 4,
      ),
      body: BlocConsumer<ManageTaskBloc, ManageTaskState>(
        listenWhen: (previous, current) =>
            previous.isSubmitting != current.isSubmitting,
        listener: (context, state) => _handleListener(
          context: context,
          state: state,
        ),
        buildWhen: (previous, current) =>
            previous.showErrorMessages != current.showErrorMessages ||
            previous.isSubmitting != current.isSubmitting ||
            (previous.task != current.task &&
                current.task == TaskEntity.empty()),
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
                    labelText: 'Select Task status',
                    validator: (_) => state.task.status.value.fold(
                      (f) => f.maybeMap(
                        empty: (_) => 'Please Select Status',
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
                    isSubmitting: state.isSubmitting,
                    value: state.task.status.getOrDefaultValue(''),
                  ),
                  const SizedBox(height: 20),
                  GenericTextField(
                    fieldKey: 'taskTitle',
                    labelText: 'Task Title',
                    validator: (text) => state.task.title.value.fold(
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
                    value: state.task.title.getOrDefaultValue(''),
                  ),
                  const SizedBox(height: 20),
                  GenericTextField(
                    fieldKey: 'taskDescription',
                    labelText: 'Task Description',
                    validator: (text) => state.task.description.value.fold(
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
                    value: state.task.description.getOrDefaultValue(''),
                  ),
                  const SizedBox(height: 20),
                  const _AddTaskButton(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _AddTaskButton extends StatelessWidget {
  const _AddTaskButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ManageTaskBloc, ManageTaskState>(
      buildWhen: (previous, current) =>
          previous.isSubmitting != current.isSubmitting,
      builder: (context, state) {
        return ElevatedButton(
          key: const Key('addTaskButton'),
          onPressed: state.isSubmitting
              ? null
              : () {
                  FocusScope.of(context).unfocus();
                  final task = context
                      .read<ManageTaskBloc>()
                      .state
                      .task
                      .copyWith(uid: context.read<UserBloc>().state.user.uid);
                  context.read<ManageTaskBloc>()
                    ..add(ManageTaskEvent.setTaskData(data: task))
                    ..add(const ManageTaskEvent.addOrEditTask());
                },
          child: LoadingShimmer.withChild(
            enabled: state.isSubmitting,
            child: const Text('Add Task'),
          ),
        );
      },
    );
  }
}
