part of '../login_screen.dart';

class _GoToRegister extends StatelessWidget {
  const _GoToRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Don’t have an account yet?',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        TextButton(
          key: const Key('createAccountButton'),
          style: Theme.of(context).textButtonTheme.style?.copyWith(
                minimumSize: WidgetStateProperty.all(const Size(0, 0)),
                padding: WidgetStateProperty.all(
                  const EdgeInsets.only(left: 3),
                ),
              ),
          child: Text(
            'Sign up',
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: AppColor.darkCyan90,
                ),
          ),
          onPressed: () {
            context.router.popAndPush(const RegisterRoute());
          },
        ),
      ],
    );
  }
}
