import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/auth/login/login_form_bloc.dart';
import '../../../../application/auth/register/register_form_bloc.dart';
import '../../../../domain/auth/value/value_objects.dart';
import '../widget_keys.dart';
import 'field_clazz.dart';

List<FieldClazz<RegisterFormState>> registerFields(
        {required BuildContext context}) =>
    <FieldClazz<RegisterFormState>>[
      FieldClazz<RegisterFormState>(
        buildWhen: (previous, current) =>
            previous.passwordVisible != current.passwordVisible ||
            previous.isSubmitting != current.isSubmitting ||
            previous.showErrorMessages != current.showErrorMessages,
        fieldKey: WidgetKeys.registerEmailFieldKey,
        labelText: 'Email',
        validator: (text, state) => EmailAddress(text ?? '').value.fold(
              (f) => f.maybeMap(
                empty: (_) => 'Email cannot be empty.',
                invalidEmail: (value) => 'Email is invalid.',
                orElse: () => null,
              ),
              (_) => null,
            ),
        onChange: (value) => context.read<RegisterFormBloc>().add(
              RegisterFormEvent.emailChanged(value),
            ),
        onDone: (p0, state) {},
        getDecoration: (state) => InputDecoration(
          hintText: 'Enter email',
          hintStyle: Theme.of(context).textTheme.bodySmall,
        ),
        getInitValue: (state) => state.email.getOrDefaultValue(''),
        isEnabled: (state) => !state.isSubmitting,
        inputFormatters: [
          TextInputFormatter.withFunction(
            (oldValue, newValue) => TextEditingValue(
              text: newValue.text.toLowerCase(),
              selection: newValue.selection,
            ),
          ),
        ],
        textInputType: TextInputType.emailAddress,
      ),
      FieldClazz<RegisterFormState>(
        buildWhen: (previous, current) =>
            previous.username != current.username ||
            previous.isSubmitting != current.isSubmitting ||
            previous.showErrorMessages != current.showErrorMessages,
        fieldKey: WidgetKeys.registerUsernameFieldKey,
        labelText: 'Username',
        validator: (text, state) => Username(text ?? '').value.fold(
              (f) => f.maybeMap(
                empty: (_) => 'Username cannot be empty.',
                orElse: () => null,
              ),
              (_) => null,
            ),
        onChange: (value) => context.read<RegisterFormBloc>().add(
              RegisterFormEvent.userNameChanged(value),
            ),
        onDone: (p0, state) {},
        getDecoration: (state) => InputDecoration(
          hintText: 'Enter Username',
          hintStyle: Theme.of(context).textTheme.bodySmall,
        ),
        getInitValue: (state) => state.username.getOrDefaultValue(''),
        isEnabled: (state) => !state.isSubmitting,
        inputFormatters: [
          TextInputFormatter.withFunction(
            (oldValue, newValue) => TextEditingValue(
              text: newValue.text.toLowerCase(),
              selection: newValue.selection,
            ),
          ),
        ],
      ),
      FieldClazz<RegisterFormState>(
        buildWhen: (previous, current) =>
            previous.passwordVisible != current.passwordVisible ||
            previous.isSubmitting != current.isSubmitting ||
            previous.showErrorMessages != current.showErrorMessages,
        fieldKey: WidgetKeys.registerPasswordFieldKey,
        labelText: 'Password',
        validator: (text, state) {
          return Password.login(text ?? '').value.fold(
                (f) => f.maybeMap(
                  empty: (_) => 'Password cannot be empty.',
                  orElse: () => null,
                ),
                (_) => null,
              );
        },
        onChange: (value) => context.read<RegisterFormBloc>().add(
              RegisterFormEvent.passwordChanged(value),
            ),
        onDone: (value, state) {
          if (!state.isSubmitting) {
            FocusScope.of(context).unfocus();
            context.read<RegisterFormBloc>().add(
                  const RegisterFormEvent.registerWithEmailAndPasswordPressed(),
                );
          }
        },
        getDecoration: (state) => InputDecoration(
          suffixIconConstraints:
              const BoxConstraints(maxHeight: 24, minHeight: 24),
          suffixIcon: IconButton(
            padding: EdgeInsets.zero,
            //key: WidgetKeys.loginPasswordFieldSuffixIcon,
            icon: Icon(
              (state as RegisterFormState).passwordVisible
                  ? Icons.visibility_outlined
                  : Icons.visibility_off_outlined,
              size: 24,
            ),
            onPressed: () => context.read<RegisterFormBloc>().add(
                  const RegisterFormEvent.passwordVisibilityChanged(),
                ),
          ),
          hintText: 'Enter password',
          hintStyle: Theme.of(context).textTheme.bodySmall,
        ),
        getInitValue: (state) => state.password.getOrDefaultValue(''),
        isEnabled: (state) => !state.isSubmitting,
        shouldObscureText: (state) => !state.passwordVisible,
        textInputType: TextInputType.visiblePassword,
      ),
      FieldClazz<RegisterFormState>(
        buildWhen: (previous, current) =>
            previous.confirmPasswordVisible != current.confirmPasswordVisible ||
            previous.password != current.password ||
            previous.isSubmitting != current.isSubmitting ||
            previous.showErrorMessages != current.showErrorMessages,
        fieldKey: WidgetKeys.registerPageConfirmPasswordFieldKey,
        labelText: 'Confirm Password',
        validator: (text, state) {
          return Password.confirm(
            text ?? '',
            state.password.getOrDefaultValue(''),
          ).value.fold(
                (f) => f.maybeMap(
                  empty: (_) => 'Confirm Password cannot be empty.',
                  mustMatchPassword: (value) =>
                      'Confirm password is not same as password',
                  orElse: () => null,
                ),
                (_) => null,
              );
        },
        onChange: (value) => context.read<RegisterFormBloc>().add(
              RegisterFormEvent.confirmPasswordChanged(value),
            ),
        onDone: (p0, state) {
          if (!state.isSubmitting) {
            FocusScope.of(context).unfocus();
            context.read<RegisterFormBloc>().add(
                  const RegisterFormEvent.registerWithEmailAndPasswordPressed(),
                );
          }
        },
        getDecoration: (state) => InputDecoration(
          suffixIconConstraints: const BoxConstraints(
            maxHeight: 24,
            minHeight: 24,
          ),
          suffixIcon: IconButton(
            padding: EdgeInsets.zero,
            //key: WidgetKeys.loginPasswordFieldSuffixIcon,
            icon: Icon(
              (state as RegisterFormState).confirmPasswordVisible
                  ? Icons.visibility_outlined
                  : Icons.visibility_off_outlined,
              size: 24,
            ),
            onPressed: () => context.read<RegisterFormBloc>().add(
                  const RegisterFormEvent.confirmPasswordVisibilityChanged(),
                ),
          ),
          hintText: 'Enter Confirm password',
          hintStyle: Theme.of(context).textTheme.bodySmall,
        ),
        getInitValue: (state) => state.confirmPassword.getOrDefaultValue(''),
        isEnabled: (state) => !state.isSubmitting,
        shouldObscureText: (state) => !state.confirmPasswordVisible,
        textInputType: TextInputType.visiblePassword,
      ),
    ];

List<FieldClazz<LoginFormState>> loginFields({required BuildContext context}) =>
    <FieldClazz<LoginFormState>>[
      FieldClazz<LoginFormState>(
        buildWhen: (previous, current) =>
            previous.passwordVisible != current.passwordVisible ||
            previous.isSubmitting != current.isSubmitting ||
            previous.showErrorMessages != current.showErrorMessages,
        fieldKey: WidgetKeys.loginEmailFieldKey,
        labelText: 'Email',
        validator: (text, state) => EmailAddress(text ?? '').value.fold(
              (f) => f.maybeMap(
                empty: (_) => 'Email cannot be empty.',
                invalidEmail: (value) => 'Email is invalid.',
                orElse: () => null,
              ),
              (_) => null,
            ),
        onChange: (value) => context.read<LoginFormBloc>().add(
              LoginFormEvent.emailChanged(value),
            ),
        onDone: (p0, state) {},
        getDecoration: (state) => InputDecoration(
          hintText: 'Enter email',
          hintStyle: Theme.of(context).textTheme.bodySmall,
        ),
        getInitValue: (state) => state.email.getOrDefaultValue(''),
        isEnabled: (state) => !state.isSubmitting,
        inputFormatters: [
          TextInputFormatter.withFunction(
            (oldValue, newValue) => TextEditingValue(
              text: newValue.text.toLowerCase(),
              selection: newValue.selection,
            ),
          ),
        ],
        textInputType: TextInputType.emailAddress,
      ),
      FieldClazz<LoginFormState>(
        buildWhen: (previous, current) =>
            previous.passwordVisible != current.passwordVisible ||
            previous.isSubmitting != current.isSubmitting ||
            previous.showErrorMessages != current.showErrorMessages,
        fieldKey: WidgetKeys.loginPasswordFieldKey,
        labelText: 'Password',
        validator: (text, state) => Password.login(text ?? '').value.fold(
              (f) => f.maybeMap(
                empty: (_) => 'Password cannot be empty.',
                orElse: () => null,
              ),
              (_) => null,
            ),
        onChange: (value) => context.read<LoginFormBloc>().add(
              LoginFormEvent.passwordChanged(value),
            ),
        onDone: (value, state) {
          if (!state.isSubmitting) {
            FocusScope.of(context).unfocus();
            context.read<LoginFormBloc>().add(
                  const LoginFormEvent.loginWithEmailAndPasswordPressed(),
                );
          }
        },
        getDecoration: (state) => InputDecoration(
          suffixIconConstraints:
              const BoxConstraints(maxHeight: 24, minHeight: 24),
          suffixIcon: IconButton(
            padding: EdgeInsets.zero,
            //key: WidgetKeys.loginPasswordFieldSuffixIcon,
            icon: Icon(
              state.passwordVisible
                  ? Icons.visibility_outlined
                  : Icons.visibility_off_outlined,
              size: 24,
            ),
            onPressed: () => context.read<LoginFormBloc>().add(
                  const LoginFormEvent.passwordVisibilityChanged(),
                ),
          ),
          hintText: 'Enter password',
          hintStyle: Theme.of(context).textTheme.bodySmall,
        ),
        getInitValue: (state) => state.password.getOrDefaultValue(''),
        isEnabled: (state) => !state.isSubmitting,
        textInputType: TextInputType.visiblePassword,
        shouldObscureText: (state) => !state.passwordVisible,
      ),
    ];
