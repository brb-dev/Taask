part of '../home_screen.dart';

class _TaskSearchBar extends StatelessWidget {
  const _TaskSearchBar();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskBloc, TaskState>(
      buildWhen: (previous, current) =>
          previous.isFetching != current.isFetching,
      builder: (context, state) {
        return _ActualTaskSearchBar(
          isEnable: !state.isFetching,
          searchKey: state.searchKey.searchValueOrEmpty,
        );
      },
    );
  }
}

class _ActualTaskSearchBar extends StatelessWidget {
  const _ActualTaskSearchBar({
    required this.isEnable,
    required this.searchKey,
  });

  final bool isEnable;
  final String searchKey;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomSearchBar(
        initialValue: searchKey,
        enabled: isEnable,
        onSearchChanged: (value) => _search(
          context: context,
          searchKey: value,
        ),
        onSearchSubmitted: (value) => _search(
          context: context,
          searchKey: value,
        ),
        customValidator: (value) => SearchKey.searchFilter(value).isValid(),
        onClear: () => _search(
          context: context,
          searchKey: '',
          onClear: true,
        ),
      ),
    );
  }

  void _search({
    required BuildContext context,
    required String searchKey,
    bool onClear = false,
  }) {
    if (!onClear && searchKey.isEmpty) return;
    context.read<TaskBloc>().add(
          TaskEvent.fetchTaskList(
            user: context.read<UserBloc>().state.user,
            filter: context.read<TaskBloc>().state.appliedFilter,
            searchKey: SearchKey.searchFilter(searchKey),
          ),
        );
  }
}
