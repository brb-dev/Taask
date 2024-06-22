part of '../login_screen.dart';

class _LoginMobile extends StatelessWidget {
  const _LoginMobile({
    required this.state,
  });

  final LoginFormState state;

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: state.showErrorMessages
          ? AutovalidateMode.always
          : AutovalidateMode.disabled,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 24,
          right: 24,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ...loginFields(context: context).map(
              (e) => GenericFormField<LoginFormBloc, LoginFormState>(
                clazz: e,
              ),
            ),
            const _RememberPassword(),
            const SizedBox(height: 15),
            const _LoginButton(),
            const SizedBox(height: 25),
            const _GoToRegister(),
          ],
        ),
      ),
    );
  }
}
