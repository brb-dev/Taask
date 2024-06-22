import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FieldClazz<T> {
  final Function(T, T) buildWhen;
  final Key fieldKey;
  final String labelText;
  final String? Function(String?, T) validator;
  final Function(String) onChange;
  final Function(String, T) onDone;
  final InputDecoration Function(dynamic) getDecoration;
  final String Function(dynamic) getInitValue;
  final bool Function(dynamic) isEnabled;
  final bool Function(T)? shouldObscureText;
  final TextInputType? textInputType;
  final List<TextInputFormatter>? inputFormatters;

  FieldClazz({
    required this.buildWhen,
    required this.fieldKey,
    required this.labelText,
    required this.validator,
    required this.onChange,
    required this.onDone,
    required this.getDecoration,
    required this.getInitValue,
    required this.isEnabled,
    this.textInputType,
    this.inputFormatters,
    this.shouldObscureText,
  });
}
