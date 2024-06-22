import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/auth/auth_bloc.dart';
import '../core/theme/app_color.dart';
import '../core/utils/app_assets.dart';
import '../core/widgets/custom_image_view.dart';

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
      ),
      body: Column(
        children: [
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
            onTap: () => context.read<AuthBloc>().add(const AuthEvent.logout()),
          ),
        ],
      ),
    );
  }
}
