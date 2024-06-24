import 'package:auto_route/auto_route.dart';

import 'route_name.dart';
import 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: RouteNames.empty,
          page: SplashRoute.page,
          initial: true,
        ),
        AutoRoute(
          page: LoginRoute.page,
          path: RouteNames.login,
        ),
        CustomRoute(
          page: RegisterRoute.page,
          path: RouteNames.register,
          transitionsBuilder: TransitionsBuilders.slideLeft,
        ),
        AutoRoute(
          path: RouteNames.main,
          page: MainNavigationRoute.page,
          children: [
            AutoRoute(
              page: HomeRoute.page,
              path: 'home',
            ),
            AutoRoute(
              page: ProfileRoute.page,
              path: 'profile',
            ),
          ],
        ),
        CustomRoute(
          page: AddTaskRoute.page,
          path: RouteNames.addTask,
          transitionsBuilder: TransitionsBuilders.slideLeft,
        ),
        CustomRoute(
          page: EditTaskRoute.page,
          path: RouteNames.editTask,
          transitionsBuilder: TransitionsBuilders.slideLeft,
        ),
        RedirectRoute(
          path: '*',
          redirectTo: RouteNames.empty,
        ),
      ];
}
