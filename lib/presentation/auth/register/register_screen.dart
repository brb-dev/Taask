import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/auth/auth_bloc.dart';
import '../../../application/auth/register/register_form_bloc.dart';
import '../../../domain/core/utils/error_utils.dart';
import '../../core/router/app_router.gr.dart';
import '../../core/theme/app_color.dart';
import '../../core/utils/widget_keys.dart';
import '../../core/widgets/loading_shimmer/loading_shimmer.dart';
import '../../core/widgets/responsive.dart';
import '../../core/utils/form_util/form_data.dart';
import '../../core/widgets/form_field/generic_form_field.dart';

part 'widgets/register_mobile.dart';
part 'widgets/register_button.dart';
part 'widgets/go_to_login.dart';

@RoutePage()
class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 4,
      ),
      body: PopScope(
        canPop: false,
        onPopInvoked: (didPop) => false,
        child: BlocConsumer<RegisterFormBloc, RegisterFormState>(
          listenWhen: (previous, current) =>
              previous.authFailureOrSuccessOption !=
              current.authFailureOrSuccessOption,
          listener: (context, state) {
            state.authFailureOrSuccessOption.fold(
              () {},
              (either) => either.fold(
                (failure) {
                  ErrorUtils.handleApiFailure(context, failure);
                },
                (success) {
                  context.read<AuthBloc>().add(const AuthEvent.authCheck());
                },
              ),
            );
          },
          builder: (context, state) {
            return Responsive(
              mobile: _RegisterMobile(
                state: state,
              ),
              tablet: const SizedBox.shrink(),
              web: const SizedBox.shrink(),
            );
          },
        ),
      ),
    );
  }
}
