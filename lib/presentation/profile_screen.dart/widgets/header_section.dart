part of '../profile_screen.dart';

class _HeaderSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      buildWhen: (previous, current) => previous.user != current.user,
      builder: (context, state) {
        return SizedBox(
          height: 200,
          child: CustomImageView(
            imagePath: state.user!.profilePicUrl.isEmpty
                ? AppAssets.defaultPhoto
                : state.user?.profilePicUrl,
            color: AppColor.grey,
            height: 100,
            width: 100,
            border: Border.all(),
            radius: BorderRadius.circular(50),
          ),
        );
      },
    );
  }
}
