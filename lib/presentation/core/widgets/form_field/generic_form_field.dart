import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../text_field_with_lebel.dart';
import '../../utils/form_util/field_clazz.dart';

class GenericFormField<B extends StateStreamable<S>, S>
    extends StatelessWidget {
  const GenericFormField({
    super.key,
    required this.clazz,
  });

  final FieldClazz<S> clazz;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<B, S>(
      buildWhen: (previous, current) => clazz.buildWhen(previous, current),
      builder: (context, state) {
        return Column(
          children: [
            TextFieldWithLabel(
              fieldKey: clazz.fieldKey,
              mandatory: true,
              labelText: clazz.labelText,
              validator: (text) => clazz.validator(text, state),
              onChanged: (value) => clazz.onChange(value),
              keyboardType: clazz.textInputType,
              autoCorrect: false,
              obscureText: clazz.shouldObscureText == null
                  ? false
                  : clazz.shouldObscureText!(state),
              onDone: (value) => clazz.onDone(value, state),
              inputFormatters: clazz.inputFormatters,
              initValue: clazz.getInitValue(state),
              isEnabled: clazz.isEnabled(state),
              decoration: clazz.getDecoration(state),
            ),
            const SizedBox(height: 15),
          ],
        );
      },
    );
  }
}
