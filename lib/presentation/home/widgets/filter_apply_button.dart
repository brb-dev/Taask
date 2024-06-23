part of '../home_screen.dart';

class _FilterApplyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      key: WidgetKeys.filterApplyButtonKey,
      onPressed: () {
        Navigator.of(context).pop(
          context.read<TaskFilterBloc>().state.filter,
        );
      },
      child: Text(
        'Apply',
        style: TextStyle(color: AppColor.white),
      ),
    );
  }
}
