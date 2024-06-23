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

  static const Key searchIconKey = Key('searchIconKey');
  static const Key clearIconKey = Key('clearIconKey');
  static const Key closeButtonKey = Key('closeButtonKey');
  static const Key filterResetButtonKey = Key('filterResetButtonKey');
  static const Key filterApplyButtonKey = Key('filterApplyButtonKey');
}
