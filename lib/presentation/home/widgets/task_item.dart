part of '../home_screen.dart';

class _TaskItem extends StatelessWidget {
  const _TaskItem({
    required this.item,
  });
  final TaskEntity item;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ManageTaskBloc, ManageTaskState>(
        listenWhen: (previous, current) =>
            previous.isSubmitting != current.isSubmitting &&
            !current.isSubmitting,
        listener: (context, state) {
          state.failureOrSuccessOption.fold(
            () {
              if (!state.isSubmitting) {
                final user = context.read<UserBloc>().state.user;
                final taskState = context.read<TaskBloc>().state;

                context.read<TaskBloc>().add(
                      TaskEvent.fetchTaskList(
                        user: user,
                        filter: taskState.appliedFilter,
                        searchKey: taskState.searchKey,
                      ),
                    );
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
            previous.isSubmitting != current.isSubmitting,
        builder: (context, state) {
          return LoadingShimmer.withChild(
            enabled: state.task == item && state.task.isDeleteInProgress,
            child: CustomSlidable(
              endActionPaneActions: [
                CustomSlidableAction(
                  label: 'Delete',
                  icon: Icons.delete_outline,
                  onPressed: (context) => context.read<ManageTaskBloc>().add(
                        ManageTaskEvent.deleteTask(data: item),
                      ),
                ),
              ],
              child: CustomTile(
                title: item.title.getOrDefaultValue(''),
                description: item.description.getOrDefaultValue(''),
                status: item.status,
                onTap: () {
                  context
                      .read<ManageTaskBloc>()
                      .add(ManageTaskEvent.setTaskData(data: item));
                  context.router.push(EditTaskRoute(task: item));
                },
              ),
            ),
          );
        });
  }
}
