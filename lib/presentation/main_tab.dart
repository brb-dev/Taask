import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'core/router/app_router.gr.dart';
import 'core/utils/app_assets.dart';
import 'core/widgets/custom_image_view.dart';

final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

@RoutePage()
class MainNavigationScreen extends StatelessWidget {
  const MainNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvoked: (didPop) => didPop,
      child: _CustomTabBar(
        routes: _getTabs(context),
      ),
    );
  }
}

class _CustomTabBar extends StatefulWidget {
  final List<RouteItem> routes;

  const _CustomTabBar({
    super.key,
    required this.routes,
  });

  @override
  State<_CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<_CustomTabBar>
    with TickerProviderStateMixin {
  TabController? tabController;

  List<PageRouteInfo> _getRouteList(List<RouteItem> routes) =>
      routes.map((e) => e.route).toList();

  @override
  Widget build(BuildContext context) {
    final routerList = _getRouteList(widget.routes);
    tabController = TabController(
      length: widget.routes.length,
      vsync: this,
    );

    return Material(
      color: Colors.white,
      child: AutoTabsRouter.pageView(
        physics: const NeverScrollableScrollPhysics(),
        routes: routerList,
        builder: (context, child, _) {
          final tabsRouter = AutoTabsRouter.of(context);
          tabController?.animateTo(tabsRouter.activeIndex);

          return Column(
            children: [
              Expanded(child: child),
              SafeArea(
                bottom: true,
                top: false,
                child: TabBar(
                  controller: tabController,
                  labelColor: Theme.of(context).primaryColor,
                  unselectedLabelColor:
                      Theme.of(context).colorScheme.inversePrimary,
                  labelStyle: Theme.of(context).textTheme.bodyMedium,
                  unselectedLabelStyle: Theme.of(context).textTheme.bodyMedium,
                  indicator: const BoxDecoration(
                    color: Colors.transparent,
                  ),
                  onTap: (index) {
                    tabsRouter.setActiveIndex(index);
                  },
                  padding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                  ),
                  labelPadding: EdgeInsets.zero,
                  tabs: _getTabs(context)
                      .map(
                        (item) => Tab(
                          icon: item.icon,
                          text: item.label,
                        ),
                      )
                      .toList(),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

List<RouteItem> _getTabs(BuildContext context) {
  return [
    homeTabRouteItem,
    profileTabRouteItem,
  ];
}

RouteItem homeTabRouteItem = RouteItem(
  route: const HomeRoute(),
  icon: CustomImageView(
    imagePath: AppAssets.homeIcon,
    height: 24,
    width: 24,
  ),
  label: 'Home',
);

RouteItem profileTabRouteItem = RouteItem(
  route: const ProfileRoute(),
  icon: CustomImageView(
    imagePath: AppAssets.profileIcon,
    height: 24,
    width: 24,
  ),
  label: 'Profile',
);

class RouteItem {
  final PageRouteInfo<dynamic> route;
  final Widget icon;
  final String label;

  const RouteItem({
    required this.route,
    required this.icon,
    required this.label,
  });
}
