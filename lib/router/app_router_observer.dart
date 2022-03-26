import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:logger/logger.dart';

class AppRouterObserver extends AutoRouterObserver {
  AppRouterObserver({
    required this.appRouterLogger,
  });

  final Logger appRouterLogger;

  @override
  void didPush(Route route, Route? previousRoute) {
    appRouterLogger.i('New route pushed: ${route.settings.name}');
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    appRouterLogger.i('Route popped: ${route.settings.name}');
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    appRouterLogger.i('Route removed: ${route.settings.name}');
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    appRouterLogger.i('Route replaced: [New] ${newRoute?.settings.name} [Old] ${oldRoute?.settings.name}');
  }

  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    appRouterLogger.i('Tab route visited: ${route.name}');
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    appRouterLogger.i('Tab route re-visited: ${route.name}');
  }
}
