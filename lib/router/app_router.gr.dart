// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i10;

import '../auth/presentation/presentation.dart' as _i3;
import '../core/loading/loading_page.dart' as _i1;
import '../features/create/presentation/presentation.dart' as _i7;
import '../features/feed/presentation/presentation.dart' as _i8;
import '../features/home/presentation/presentation.dart' as _i5;
import '../features/login/presentation/presentation.dart' as _i2;
import '../features/nearby/presentation/presentation.dart' as _i6;
import '../features/profile/presentation/presentation.dart' as _i9;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    LoadingRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(routeData: routeData, child: const _i1.LoadingPage());
    },
    LoginRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(routeData: routeData, child: const _i2.LoginPage());
    },
    AuthWrapperRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(routeData: routeData, child: const _i3.AuthWrapperPage());
    },
    HomeRouter.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(routeData: routeData, child: const _i4.EmptyRouterPage());
    },
    NearbyRouter.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(routeData: routeData, child: const _i4.EmptyRouterPage());
    },
    CreateRouter.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(routeData: routeData, child: const _i4.EmptyRouterPage());
    },
    FeedRouter.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(routeData: routeData, child: const _i4.EmptyRouterPage());
    },
    ProfileRouter.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(routeData: routeData, child: const _i4.EmptyRouterPage());
    },
    HomeRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(routeData: routeData, child: const _i5.HomePage());
    },
    NearbyRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(routeData: routeData, child: const _i6.NearbyPage());
    },
    CreateRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(routeData: routeData, child: const _i7.CreatePage());
    },
    FeedRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(routeData: routeData, child: const _i8.FeedPage());
    },
    ProfileRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(routeData: routeData, child: const _i9.ProfilePage());
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(LoadingRoute.name, path: '/login'),
        _i4.RouteConfig(LoginRoute.name, path: '/loading'),
        _i4.RouteConfig(AuthWrapperRoute.name, path: '/', children: [
          _i4.RouteConfig(HomeRouter.name,
              path: 'home',
              parent: AuthWrapperRoute.name,
              children: [_i4.RouteConfig(HomeRoute.name, path: '', parent: HomeRouter.name)]),
          _i4.RouteConfig(NearbyRouter.name,
              path: 'nearby',
              parent: AuthWrapperRoute.name,
              children: [_i4.RouteConfig(NearbyRoute.name, path: '', parent: NearbyRouter.name)]),
          _i4.RouteConfig(CreateRouter.name,
              path: 'create',
              parent: AuthWrapperRoute.name,
              children: [_i4.RouteConfig(CreateRoute.name, path: '', parent: CreateRouter.name)]),
          _i4.RouteConfig(FeedRouter.name,
              path: 'feed',
              parent: AuthWrapperRoute.name,
              children: [_i4.RouteConfig(FeedRoute.name, path: '', parent: FeedRouter.name)]),
          _i4.RouteConfig(ProfileRouter.name,
              path: 'profile',
              parent: AuthWrapperRoute.name,
              children: [_i4.RouteConfig(ProfileRoute.name, path: '', parent: ProfileRouter.name)])
        ])
      ];
}

/// generated route for
/// [_i1.LoadingPage]
class LoadingRoute extends _i4.PageRouteInfo<void> {
  const LoadingRoute() : super(LoadingRoute.name, path: '/login');

  static const String name = 'LoadingRoute';
}

/// generated route for
/// [_i2.LoginPage]
class LoginRoute extends _i4.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/loading');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i3.AuthWrapperPage]
class AuthWrapperRoute extends _i4.PageRouteInfo<void> {
  const AuthWrapperRoute({List<_i4.PageRouteInfo>? children})
      : super(AuthWrapperRoute.name, path: '/', initialChildren: children);

  static const String name = 'AuthWrapperRoute';
}

/// generated route for
/// [_i4.EmptyRouterPage]
class HomeRouter extends _i4.PageRouteInfo<void> {
  const HomeRouter({List<_i4.PageRouteInfo>? children})
      : super(HomeRouter.name, path: 'home', initialChildren: children);

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i4.EmptyRouterPage]
class NearbyRouter extends _i4.PageRouteInfo<void> {
  const NearbyRouter({List<_i4.PageRouteInfo>? children})
      : super(NearbyRouter.name, path: 'nearby', initialChildren: children);

  static const String name = 'NearbyRouter';
}

/// generated route for
/// [_i4.EmptyRouterPage]
class CreateRouter extends _i4.PageRouteInfo<void> {
  const CreateRouter({List<_i4.PageRouteInfo>? children})
      : super(CreateRouter.name, path: 'create', initialChildren: children);

  static const String name = 'CreateRouter';
}

/// generated route for
/// [_i4.EmptyRouterPage]
class FeedRouter extends _i4.PageRouteInfo<void> {
  const FeedRouter({List<_i4.PageRouteInfo>? children})
      : super(FeedRouter.name, path: 'feed', initialChildren: children);

  static const String name = 'FeedRouter';
}

/// generated route for
/// [_i4.EmptyRouterPage]
class ProfileRouter extends _i4.PageRouteInfo<void> {
  const ProfileRouter({List<_i4.PageRouteInfo>? children})
      : super(ProfileRouter.name, path: 'profile', initialChildren: children);

  static const String name = 'ProfileRouter';
}

/// generated route for
/// [_i5.HomePage]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i6.NearbyPage]
class NearbyRoute extends _i4.PageRouteInfo<void> {
  const NearbyRoute() : super(NearbyRoute.name, path: '');

  static const String name = 'NearbyRoute';
}

/// generated route for
/// [_i7.CreatePage]
class CreateRoute extends _i4.PageRouteInfo<void> {
  const CreateRoute() : super(CreateRoute.name, path: '');

  static const String name = 'CreateRoute';
}

/// generated route for
/// [_i8.FeedPage]
class FeedRoute extends _i4.PageRouteInfo<void> {
  const FeedRoute() : super(FeedRoute.name, path: '');

  static const String name = 'FeedRoute';
}

/// generated route for
/// [_i9.ProfilePage]
class ProfileRoute extends _i4.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: '');

  static const String name = 'ProfileRoute';
}
