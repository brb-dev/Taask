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
  static const Key loginButtonKey = Key('loginButtonKey');
  static const Key rememberPasswordKey = Key('rememberPasswordKey');
  static const Key createAccountButton = Key('createAccountButton');
  static const Key loginAccountButton = Key('loginAccountButton');

  static const Key registerButtonKey = Key('registerButtonKey');

  static const Key searchIconKey = Key('searchIconKey');
  static const Key clearIconKey = Key('clearIconKey');
  static const Key closeButtonKey = Key('closeButtonKey');
  static const Key filterResetButtonKey = Key('filterResetButtonKey');
  static const Key filterApplyButtonKey = Key('filterApplyButtonKey');

  static const Key taskStatusKey = Key('taskStatusKey');
  static const Key addTaskButton = Key('addTaskButton');
  static const Key editTaskButton = Key('editTaskButton');

  static const Key slidable = Key('slidable');
  static const Key splashLoadingIndicator = Key('splashLoadingIndicator');
}
