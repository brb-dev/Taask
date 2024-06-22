import 'package:dartz/dartz.dart';

import '../../core/error/failures.dart';
import '../../core/value/value_objects.dart';
import '../../core/value/value_transformers.dart';
import '../../core/value/value_validators.dart';
import 'value_validators.dart';

class Username extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Username(String input) {
    return Username._(validateStringNotEmpty(input));
  }

  const Username._(this.value);
}

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(
      validateStringNotEmpty(input).flatMap(validateEmailAddress),
    );
  }

  factory EmailAddress.optional(String input) {
    return EmailAddress._(
      (validateStringIsEmpty(input).fold(
        (l) => validateEmailAddress(input),
        (r) => Right(r),
      )),
    );
  }

  const EmailAddress._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password.login(String input) {
    return Password._(validateStringNotEmpty(input));
  }

  factory Password.confirm(String confirmPassword, String newPassword) {
    return Password._(
      validateStringNotEmpty(confirmPassword).flatMap(
        (input) => validateNewAndConfirmPassword(input, newPassword),
      ),
    );
  }

  bool get matchMinCharacter => isMinCharacter(
        input: getValidPassword,
        minLength: 10,
      );

  bool get matchAtLeastOneUpperCharacter => isAtLeastOneUpperCharacter(
        input: getValidPassword,
      );

  bool get matchAtLeastOneLowerCharacter => isAtLeastOneLowerCharacter(
        input: getValidPassword,
      );

  bool get matchAtLeastOneNumericCharacter => isAtLeastOneNumericCharacter(
        input: getValidPassword,
      );

  bool get matchAtLeastOneSpecialCharacter =>
      isAtLeastOneSpecialCharacter(input: getValidPassword);

  String get getValidPassword => value.fold((l) => l.failedValue, (r) => r);

  const Password._(this.value);
}
