part of '../home_screen.dart';

class _FilterResetButton extends StatelessWidget {
  const _FilterResetButton({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      key: WidgetKeys.filterResetButtonKey,
      onPressed: () {
        context.read<TaskFilterBloc>().add(
              const TaskFilterEvent.resetFilter(),
            );
        Navigator.of(context).pop(
          TaskFilterEntity.empty(),
        );
      },
      child: Text(
        'Reset',
        style: TextStyle(color: Theme.of(context).primaryColor),
      ),
    );
  }
}
