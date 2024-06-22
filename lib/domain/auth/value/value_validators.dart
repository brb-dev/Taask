import 'package:dartz/dartz.dart';

import '../../core/error/failures.dart';

Either<ValueFailure<String>, String> validateNewAndConfirmPassword(
  String confirmPassword,
  String newPassword,
) {
  return confirmPassword == newPassword
      ? right(confirmPassword)
      : left(ValueFailure.mustMatchPassword(failedValue: confirmPassword));
}
