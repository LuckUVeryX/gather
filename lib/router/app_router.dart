import 'package:auto_route/auto_route.dart';

import '../auth/presentation/presentation.dart';
import '../core/loading/loading_page.dart';
import '../features/home/presentation/presentation.dart';
import '../features/login/presentation/presentation.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: AuthWrapperPage, path: '/', initial: true),
    AutoRoute(page: LoadingPage, path: '/login'),
    AutoRoute(page: LoginPage, path: '/loading'),
    AutoRoute(page: LandingPage, path: '/landing'),
    AutoRoute(page: HomePage, path: '/home'),
  ],
)
class $AppRouter {}
