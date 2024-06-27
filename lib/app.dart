import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'application/auth/auth_bloc.dart';
import 'application/auth/login/login_form_bloc.dart';
import 'application/auth/register/register_form_bloc.dart';
import 'application/auth/user/user_bloc.dart';
import 'application/task/manage_task/manage_task_bloc.dart';
import 'application/task/task_bloc.dart';
import 'application/task/task_filter/task_filter_bloc.dart';
import 'config.dart';
import 'domain/core/value/value_objects.dart';
import 'domain/task/entities/task_filter_entity.dart';
import 'infrastructure/core/local_storage/uid_storage.dart';
import 'locator.dart';
import 'presentation/core/router/app_router.dart';
import 'presentation/core/router/app_router_observer.dart';
import 'presentation/core/theme/app_theme.dart';

Future<void> initialSetup({required Flavor flavor}) async {
  setupLocator();
  final config = locator<Config>();
  config.appFlavor = flavor;
}

void runAppWithCrashlyticsAndLocalization({required Flavor flavor}) {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      final config = locator<Config>();
      await Firebase.initializeApp(options: config.firebaseOptions);
      await locator<UidStorage>().init();
      runApp(
        App(
          flavor: flavor.name,
        ),
      );
    },
    (error, stackTrace) {
      //record Error
    },
  );
}

class App extends StatelessWidget {
  const App({
    super.key,
    required this.flavor,
  });

  final String flavor;

  @override
  Widget build(BuildContext context) {
    final router = locator<AppRouter>();

    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => locator<AuthBloc>()..add(const AuthEvent.init()),
        ),
        BlocProvider<LoginFormBloc>(
          create: (context) => locator<LoginFormBloc>(),
        ),
        BlocProvider<RegisterFormBloc>(
          create: (context) => locator<RegisterFormBloc>(),
        ),
        BlocProvider<UserBloc>(
          create: (context) =>
              locator<UserBloc>()..add(const UserEvent.initialized()),
        ),
        BlocProvider<TaskBloc>(
          create: (context) => locator<TaskBloc>(),
        ),
        BlocProvider<TaskFilterBloc>(
          create: (context) => locator<TaskFilterBloc>()
            ..add(
              const TaskFilterEvent.initialize(),
            ),
        ),
        BlocProvider<ManageTaskBloc>(
          create: (context) =>
              locator<ManageTaskBloc>()..add(const ManageTaskEvent.init()),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: appThemeData[AppTheme.light],
        darkTheme: appThemeData[AppTheme.dark],
        themeMode: ThemeMode.system,
        routerDelegate: AutoRouterDelegate(
          router,
          navigatorObservers: () => [
            locator<AppRouterObserver>(),
          ],
        ),
        routeInformationParser: router.defaultRouteParser(),
      ),
    );
  }
}
