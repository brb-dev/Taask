import 'package:flutter/material.dart';

class WidgetKeys {
  static Key genericKey({required String key}) => Key(key);

  static const Key registerPageConfirmPasswordFieldKey =
      Key('registerPageConfirmPasswordFieldKey');
  static const Key registerEmailFieldKey = Key('registerEmailFieldKey');
  static const Key registerUsernameFieldKey = Key('registerUsernameFieldKey');
  static const Key registerPasswordFieldKey = Key('registerPasswordFieldKey');

  static const Key loginEmailFieldKey = Key('loginEmailFieldKey');
  static const Key loginPasswordFieldKey = Key('loginPasswordFieldKey');
}
