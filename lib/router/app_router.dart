import 'package:auto_route/auto_route.dart';

import '../core/loading/loading_page.dart';
import '../features/welcome/landing_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: LandingPage, path: '/loading', initial: true),
    AutoRoute(page: LoadingPage, path: '/loading'),
  ],
)
class $AppRouter {}
