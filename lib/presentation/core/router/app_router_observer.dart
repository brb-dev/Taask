import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class AppRouterObserver extends AutoRouterObserver {
  AppRouterObserver();

  @override
  void didPush(Route route, Route? previousRoute) {}

  @override
  void didPop(Route route, Route? previousRoute) {}

  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {}

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {}
}
