part of '../home_screen.dart';

class _FilterAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: AppBar(
        title: const Text('Filter'),
        automaticallyImplyLeading: false,
        centerTitle: false,
        elevation: 0,
        actions: [
          IconButton(
            key: WidgetKeys.closeButtonKey,
            onPressed: () {
              context.read<TaskFilterBloc>().add(
                    TaskFilterEvent.resetFiltersToLastApplied(
                      lastAppliedFilter:
                          context.read<TaskBloc>().state.appliedFilter,
                    ),
                  );
              context.router.popForced();
            },
            icon: Icon(
              Icons.clear,
              color: AppColor.black,
            ),
          ),
        ],
      ),
    );
  }
}
