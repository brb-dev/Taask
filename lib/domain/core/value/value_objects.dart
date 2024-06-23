import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import '../error/errors.dart';
import '../error/failures.dart';
import 'value_validators.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  /// Throws [UnexpectedValueError] containing the [ValueFailure]
  T getOrCrash() {
    // id = identity - same as writing (right) => right
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  T getOrDefaultValue(T defaultValue) {
    return value.fold((f) => defaultValue, id);
  }

  T getValue() => value.fold((f) => f.failedValue, (r) => r);

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }

  bool isValid() => value.isRight();

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ValueObject<T> && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}

class SearchKey extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory SearchKey(String input) {
    return SearchKey._(right(input));
  }

  factory SearchKey.search(String searchText) {
    return SearchKey._(
      validateStringNotEmpty(searchText)
          .flatMap((input) => validateMinStringLength(input, 2)),
    );
  }

  factory SearchKey.searchFilter(String searchText) {
    return SearchKey._(
      (validateStringIsEmpty(searchText).fold(
        (l) => validateMinStringLength(l.failedValue, 2),
        (r) => Right(r),
      )),
    );
  }

  bool get validateNotEmpty => searchValueOrEmpty.isNotEmpty;

  String get searchValueOrEmpty => value.getOrElse(() => '');

  int get countWhenValid => validateNotEmpty ? 1 : 0;

  bool get isValueEmpty => value.fold((l) => l.failedValue, (r) => r).isEmpty;

  const SearchKey._(this.value);
}
