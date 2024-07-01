part of '../register_screen.dart';

class _GoToLogin extends StatelessWidget {
  const _GoToLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Already have an account?',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        TextButton(
          key: WidgetKeys.loginAccountButton,
          style: Theme.of(context).textButtonTheme.style?.copyWith(
                minimumSize: WidgetStateProperty.all(const Size(0, 0)),
                padding: WidgetStateProperty.all(
                  const EdgeInsets.only(left: 3),
                ),
              ),
          child: Text(
            'Login',
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: AppColor.darkCyan90,
                ),
          ),
          onPressed: () {
            context.router.popAndPush(const LoginRoute());
          },
        ),
      ],
    );
  }
}
