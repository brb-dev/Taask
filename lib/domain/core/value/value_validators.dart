import 'package:dartz/dartz.dart';

import '../error/failures.dart';
import 'value_transformers.dart';

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  return input.isNotEmpty
      ? right(input)
      : left(ValueFailure.empty(failedValue: input));
}

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

  return RegExp(emailRegex).hasMatch(input)
      ? right(input)
      : left(ValueFailure.invalidEmail(failedValue: input));
}

Either<ValueFailure<String>, String> validateStringIsEmpty(String input) {
  return input.isEmpty
      ? right(input)
      : left(ValueFailure.empty(failedValue: input));
}

Either<ValueFailure<String>, String> validateMinStringLength(
  String input,
  int minLength,
) {
  return isMinCharacter(input: input, minLength: minLength)
      ? right(input)
      : left(ValueFailure.subceedLength(failedValue: input, min: minLength));
}
