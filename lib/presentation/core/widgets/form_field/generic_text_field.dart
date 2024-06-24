import 'package:flutter/material.dart';

class GenericTextField extends StatelessWidget {
  const GenericTextField({
    super.key,
    required this.fieldKey,
    required this.labelText,
    required this.validator,
    required this.onChanged,
    required this.isEnabled,
    required this.value,
  });
  final String fieldKey;
  final String labelText;
  final Function(String?) validator;
  final Function(String?) onChanged;
  final bool isEnabled;
  final String value;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: Key(fieldKey),
      autocorrect: false,
      enabled: isEnabled,
      decoration: InputDecoration(labelText: labelText),
      onChanged: onChanged,
      validator: (value) => validator(value),
      initialValue: value,
    );
  }
}
