part of '../home_screen.dart';

class _TaskFilter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskBloc, TaskState>(
        buildWhen: (previous, current) =>
            previous.isFetching != current.isFetching ||
            previous.appliedFilter != current.appliedFilter,
        builder: (context, state) {
          return Stack(
            children: [
              IconButton(
                onPressed: () => !state.isFetching
                    ? _showFilterPage(
                        context: context,
                      )
                    : null,
                icon: Icon(
                  Icons.tune,
                  color: AppColor.grey,
                ),
              ),
              Positioned(
                right: 4,
                top: 4,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColor.dusk70,
                  ),
                  padding: const EdgeInsets.all(3),
                  alignment: Alignment.center,
                  child: Text(
                    state.appliedFilter.statusList.length.toString(),
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontSize: 10,
                          color: AppColor.white,
                        ),
                  ),
                ),
              ),
            ],
          );
        });
  }

  void _showFilterPage({
    required BuildContext context,
  }) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      enableDrag: false,
      isDismissible: false,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16),
        ),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      builder: (_) {
        return _TaskFilterSheet();
      },
    ).then(
      (value) {
        if (value == null) return;
        _doFetchTaskByFilter(
          context: context,
          filter: value as TaskFilterEntity,
        );
      },
    );
  }

  void _doFetchTaskByFilter({
    required BuildContext context,
    required TaskFilterEntity filter,
  }) {
    if (context.read<TaskBloc>().state.appliedFilter != filter) {
      context.read<TaskBloc>().add(
            TaskEvent.fetchTaskList(
              user: context.read<AuthBloc>().state.user!,
              searchKey: context.read<TaskBloc>().state.searchKey,
              filter: filter,
            ),
          );
    }
  }
}
