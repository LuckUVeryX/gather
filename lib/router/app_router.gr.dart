// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../auth/presentation/presentation.dart' as _i1;
import '../core/loading/loading_page.dart' as _i2;
import '../features/home/presentation/presentation.dart' as _i4;
import '../features/login/presentation/presentation.dart' as _i3;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    AuthWrapperRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(routeData: routeData, child: const _i1.AuthWrapperPage());
    },
    LoadingRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(routeData: routeData, child: const _i2.LoadingPage());
    },
    LoginRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(routeData: routeData, child: const _i3.LoginPage());
    },
    LandingRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(routeData: routeData, child: const _i3.LandingPage());
    },
    HomeRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(routeData: routeData, child: const _i4.HomePage());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(AuthWrapperRoute.name, path: '/'),
        _i5.RouteConfig(LoadingRoute.name, path: '/login'),
        _i5.RouteConfig(LoginRoute.name, path: '/loading'),
        _i5.RouteConfig(LandingRoute.name, path: '/landing'),
        _i5.RouteConfig(HomeRoute.name, path: '/home')
      ];
}

/// generated route for
/// [_i1.AuthWrapperPage]
class AuthWrapperRoute extends _i5.PageRouteInfo<void> {
  const AuthWrapperRoute() : super(AuthWrapperRoute.name, path: '/');

  static const String name = 'AuthWrapperRoute';
}

/// generated route for
/// [_i2.LoadingPage]
class LoadingRoute extends _i5.PageRouteInfo<void> {
  const LoadingRoute() : super(LoadingRoute.name, path: '/login');

  static const String name = 'LoadingRoute';
}

/// generated route for
/// [_i3.LoginPage]
class LoginRoute extends _i5.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/loading');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i3.LandingPage]
class LandingRoute extends _i5.PageRouteInfo<void> {
  const LandingRoute() : super(LandingRoute.name, path: '/landing');

  static const String name = 'LandingRoute';
}

/// generated route for
/// [_i4.HomePage]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/home');

  static const String name = 'HomeRoute';
}
