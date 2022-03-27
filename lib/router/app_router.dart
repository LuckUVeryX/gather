import 'package:auto_route/auto_route.dart';

import '../auth/presentation/presentation.dart';
import '../core/loading/loading_page.dart';
import '../features/create/presentation/presentation.dart';
import '../features/feed/presentation/presentation.dart';
import '../features/home/presentation/presentation.dart';
import '../features/login/presentation/presentation.dart';
import '../features/nearby/presentation/presentation.dart';
import '../features/profile/presentation/presentation.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    // * Generic Routes
    AutoRoute(page: LoadingPage, path: '/login'),
    AutoRoute(page: LoginPage, path: '/loading'),

    // * Authenticated Routes
    AutoRoute(page: AuthWrapperPage, path: '/', initial: true, children: [
      // * Bottom Tab Bar Routes
      AutoRoute(page: EmptyRouterPage, path: 'home', name: 'HomeRouter', children: [
        AutoRoute(page: HomePage, path: ''),
      ]),
      AutoRoute(page: EmptyRouterPage, path: 'nearby', name: 'NearbyRouter', children: [
        AutoRoute(page: NearbyPage, path: ''),
      ]),
      AutoRoute(page: EmptyRouterPage, path: 'create', name: 'CreateRouter', children: [
        AutoRoute(page: CreatePage, path: ''),
      ]),
      AutoRoute(page: EmptyRouterPage, path: 'feed', name: 'FeedRouter', children: [
        AutoRoute(page: FeedPage, path: ''),
      ]),
      AutoRoute(page: EmptyRouterPage, path: 'profile', name: 'ProfileRouter', children: [
        AutoRoute(page: ProfilePage, path: ''),
      ]),
    ]),
  ],
)
class $AppRouter {}
