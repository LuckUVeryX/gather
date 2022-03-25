// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../core/loading/loading_page.dart' as _i2;
import '../features/welcome/landing_page.dart' as _i1;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    LandingRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.LandingPage());
    },
    LoadingRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.LoadingPage());
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig('/#redirect',
            path: '/', redirectTo: '/loading', fullMatch: true),
        _i3.RouteConfig(LandingRoute.name, path: '/loading'),
        _i3.RouteConfig(LoadingRoute.name, path: '/loading')
      ];
}

/// generated route for
/// [_i1.LandingPage]
class LandingRoute extends _i3.PageRouteInfo<void> {
  const LandingRoute() : super(LandingRoute.name, path: '/loading');

  static const String name = 'LandingRoute';
}

/// generated route for
/// [_i2.LoadingPage]
class LoadingRoute extends _i3.PageRouteInfo<void> {
  const LoadingRoute() : super(LoadingRoute.name, path: '/loading');

  static const String name = 'LoadingRoute';
}
