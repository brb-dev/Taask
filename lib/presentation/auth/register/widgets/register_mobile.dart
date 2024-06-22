part of '../register_screen.dart';

class _RegisterMobile extends StatelessWidget {
  const _RegisterMobile({
    required this.state,
  });

  final RegisterFormState state;
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
        child: ListView(
          children: [
            const SizedBox(height: 30),
            ...registerFields(context: context).map(
              (e) => GenericFormField<RegisterFormBloc, RegisterFormState>(
                clazz: e,
              ),
            ),
            const _RegisterButton(),
            const SizedBox(height: 25),
            const _GoToLogin(),
          ],
        ),
      ),
    );
  }
}
