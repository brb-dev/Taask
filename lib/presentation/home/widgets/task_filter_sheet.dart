part of '../home_screen.dart';

class _TaskFilterSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _FilterAppBar(),
          ListTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Status',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                const SizedBox(height: 12),
                _TaskStatusPicker(),
                const SizedBox(height: 20),
                Row(
                  children: [
                    const Expanded(
                      child: _FilterResetButton(),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: _FilterApplyButton(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
