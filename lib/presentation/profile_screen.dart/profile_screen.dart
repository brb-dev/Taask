import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/auth/auth_bloc.dart';
import '../../application/auth/user/user_bloc.dart';
import '../core/theme/app_color.dart';
import '../core/utils/app_assets.dart';
import '../core/widgets/balanced_text_row.dart';
import '../core/widgets/custom_image_view.dart';

part 'widgets/header_section.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 4,
        actions: [
          BlocBuilder<UserBloc, UserState>(
              buildWhen: (previous, current) =>
                  previous.isEdit != current.isEdit,
              builder: (context, state) {
                return TextButton(
                  onPressed: () => context
                      .read<UserBloc>()
                      .add(const UserEvent.changeMode()),
                  child: Text(state.isEdit ? 'Save' : 'Edit'),
                );
              }),
        ],
      ),
      body: BlocBuilder<UserBloc, UserState>(
          buildWhen: (previous, current) =>
              previous.user.uid != current.user.uid,
          builder: (context, state) {
            return Column(
              children: [
                _HeaderSection(),
                ListTile(
                  title: BalanceTextRow(
                    keyFlex: 3,
                    valueFlex: 5,
                    keyText: 'Username',
                    valueText: context.read<UserBloc>().state.user.displayName,
                    keyTextStyle: Theme.of(context)
                        .textTheme
                        .labelSmall
                        ?.copyWith(color: AppColor.black),
                    valueTextStyle: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: AppColor.black),
                  ),
                ),
                ListTile(
                  title: BalanceTextRow(
                    keyFlex: 3,
                    valueFlex: 5,
                    keyText: 'Email',
                    valueText: context
                        .read<UserBloc>()
                        .state
                        .user
                        .email
                        .getOrDefaultValue(''),
                    keyTextStyle: Theme.of(context)
                        .textTheme
                        .labelSmall
                        ?.copyWith(color: AppColor.black),
                    valueTextStyle: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: AppColor.black),
                  ),
                ),
                ListTile(
                  leading: CustomImageView(
                    imagePath: AppAssets.logoutIcon,
                    color: AppColor.red,
                    height: 30,
                    width: 30,
                  ),
                  title: const Text('Logout'),
                  tileColor: AppColor.white,
                  splashColor: AppColor.lightGrey,
                  onTap: () =>
                      context.read<AuthBloc>().add(const AuthEvent.logout()),
                ),
              ],
            );
          }),
    );
  }
}
