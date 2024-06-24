import 'package:flutter/material.dart';

import '../../../../domain/task/value/value_objects.dart';
import '../../theme/app_color.dart';

class CustomTile extends StatelessWidget {
  const CustomTile({
    super.key,
    required this.title,
    required this.description,
    required this.status,
    required this.onTap,
  });
  final String title;
  final String description;
  final TaskStatus status;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(description),
      tileColor: AppColor.white,
      trailing: TextButton(
        onPressed: () {},
        child: Text(
          status.getOrDefaultValue('Undefined'),
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: status.displayStatusLabelColor),
        ),
      ),
      onTap: () {
        onTap();
      },
    );
  }
}
