import 'package:flutter/material.dart';

import '../../../presentation/core/theme/app_color.dart';
import '../../../presentation/core/widgets/snackbar/custom_snackbar.dart';
import '../error/api_failure.dart';

class ErrorUtils {
  static void handleApiFailure(BuildContext context, ApiFailure failure) {
    final failureMessage = failure.failureMessage;
    CustomSnackBar(
      icon: Icon(
        Icons.info,
        color: AppColor.red,
      ),
      backgroundColor: AppColor.dusk50,
      messageText: failureMessage,
    ).show(context);
  }
}
