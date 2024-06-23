import 'package:flutter/material.dart';

import '../../../presentation/core/theme/app_color.dart';

Color getStatusLabelColor(String statusType) {
  final lightSecondary = {
    'To Do': AppColor.red,
    'In Progress': AppColor.pink,
    'Done': AppColor.green,
  };

  return lightSecondary[statusType] ?? AppColor.darkCyan50;
}
