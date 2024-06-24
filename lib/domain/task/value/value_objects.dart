import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import '../../core/error/failures.dart';
import '../../core/value/value_objects.dart';
import '../../core/value/value_validators.dart';
import 'value_transformer.dart';

class TaskStatus extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory TaskStatus(String input) {
    return TaskStatus._(validateStringNotEmpty(input));
  }

  Color get displayStatusLabelColor =>
      getStatusLabelColor(value.getOrElse(() => ''));

  const TaskStatus._(this.value);
}

class TaskTitle extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory TaskTitle(String input) {
    return TaskTitle._(validateStringNotEmpty(input));
  }

  const TaskTitle._(this.value);
}

class TaskDescription extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory TaskDescription(String input) {
    return TaskDescription._(validateStringNotEmpty(input));
  }

  const TaskDescription._(this.value);
}
