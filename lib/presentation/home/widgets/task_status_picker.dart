part of '../home_screen.dart';

class _TaskStatusPicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskFilterBloc, TaskFilterState>(
      buildWhen: (previous, current) =>
          previous.filter.statusList != current.filter.statusList,
      builder: (context, state) {
        return Column(
          children: [
            ...state.statusList.map(
              (e) {
                final name = e.getOrDefaultValue('');
                final value = state.filter.statusList.contains(e);

                return CheckboxListTile(
                  //key: WidgetKeys.viewByItemsFilterStatusKey(name, value),
                  contentPadding: EdgeInsets.zero,
                  title: Text(
                    name,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  controlAffinity: ListTileControlAffinity.leading,
                  dense: true,
                  visualDensity: VisualDensity.compact,
                  onChanged: (bool? value) =>
                      context.read<TaskFilterBloc>().add(
                            TaskFilterEvent.setTaskStatus(
                              status: e,
                              value: value ?? false,
                            ),
                          ),
                  value: value,
                );
              },
            ),
          ],
        );
      },
    );
  }
}
