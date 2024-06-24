import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/application/profile/profile_bloc.dart';
import 'package:task/presentation/core/widgets/balanced_text_row.dart';

import '../../application/auth/auth_bloc.dart';
import '../core/theme/app_color.dart';
import '../core/utils/app_assets.dart';
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
          BlocBuilder<ProfileBloc, ProfileState>(
              buildWhen: (previous, current) =>
                  previous.isEditMode != current.isEditMode,
              builder: (context, state) {
                return TextButton(
                  onPressed: () => context
                      .read<ProfileBloc>()
                      .add(const ProfileEvent.changeMode()),
                  child: Text(state.isEditMode ? 'Save' : 'Edit'),
                );
              }),
        ],
      ),
      body: BlocBuilder<ProfileBloc, ProfileState>(
          buildWhen: (previous, current) =>
              previous.isEditMode != current.isEditMode,
          builder: (context, state) {
            return Column(
              children: [
                _HeaderSection(),
                ListTile(
                  title: BalanceTextRow(
                    keyFlex: 3,
                    valueFlex: 5,
                    keyText: 'Username',
                    valueText: context.read<AuthBloc>().state.user!.displayName,
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
                    valueText: context.read<AuthBloc>().state.user!.email,
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
