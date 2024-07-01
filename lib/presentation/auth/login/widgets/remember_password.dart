part of '../login_screen.dart';

class _RememberPassword extends StatelessWidget {
  const _RememberPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginFormBloc, LoginFormState>(
      buildWhen: (previous, current) =>
          previous.rememberPassword != current.rememberPassword,
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Checkbox(
                  key: WidgetKeys.rememberPasswordKey,
                  value: state.rememberPassword,
                  onChanged: (value) {
                    FocusScope.of(context).unfocus();
                    context.read<LoginFormBloc>().add(
                          const LoginFormEvent.rememberCheckChanged(),
                        );
                  },
                  side: WidgetStateBorderSide.resolveWith(
                    (states) => BorderSide(
                      width: 2.0,
                      color: AppColor.lightGrey,
                    ),
                  ),
                  visualDensity:
                      const VisualDensity(horizontal: -4, vertical: -4),
                ),
                const SizedBox(width: 5),
                Text(
                  'Remember me',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
            TextButton(
              child: Text(
                'Forgot password?',
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      color: AppColor.darkCyan90,
                    ),
              ),
              onPressed: () {
                /*context.read<ForgotPasswordBloc>().add(
                      const ForgotPasswordEvent.initialized(),
                    );
                context.router.pushNamed('forgot_password');*/
              },
            ),
          ],
        );
      },
    );
  }
}
