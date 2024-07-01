import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/application/task/task_bloc.dart';

import '../../application/auth/auth_bloc.dart';
import '../../application/auth/user/user_bloc.dart';
import '../../domain/core/value/value_objects.dart';
import '../../domain/task/entities/task_filter_entity.dart';
import '../core/router/app_router.gr.dart';
import '../core/theme/app_color.dart';
import '../core/utils/app_assets.dart';
import '../core/utils/widget_keys.dart';
import '../core/widgets/custom_image_view.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
        context.read<AuthBloc>().add(const AuthEvent.init());
        break;
      case AppLifecycleState.inactive:
        break;
      case AppLifecycleState.paused:
        break;
      case AppLifecycleState.hidden:
        break;
      case AppLifecycleState.detached:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthBloc, AuthState>(
          listenWhen: (previous, current) => previous != current,
          listener: (context, state) {
            state.map(
              initial: (_) => _showLoadingDialog(context),
              loading: (_) => _showLoadingDialog(context),
              authenticated: (authState) {
                context.read<UserBloc>().add(const UserEvent.fetch());
                context.router.replaceAll(
                  [
                    const SplashRoute(),
                    const MainNavigationRoute(),
                  ],
                );
              },
              unauthenticated: (unauthState) {
                context.router.replaceAll(
                  [
                    const SplashRoute(),
                    const LoginRoute(),
                  ],
                );
              },
            );
          },
        ),
        BlocListener<UserBloc, UserState>(
          listenWhen: (previous, current) =>
              previous.user.uid != current.user.uid,
          listener: (context, state) {
            context.read<TaskBloc>().add(
                  TaskEvent.fetchTaskList(
                    user: state.user,
                    searchKey: SearchKey(''),
                    filter: TaskFilterEntity.empty(),
                  ),
                );
          },
        ),
      ],
      child: _Splash(),
    );
  }

  void _showLoadingDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return const CupertinoAlertDialog(
          content: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(
                width: 50,
                height: 50,
                child: CircularProgressIndicator(
                  key: WidgetKeys.splashLoadingIndicator,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.darkCyan50,
      body: Stack(
        children: [
          Center(
            child: Text(
              'TaaskM',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: CustomImageView(
              imagePath: AppAssets.linesIcon,
            ),
          ),
        ],
      ),
    );
  }
}
