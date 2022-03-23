import 'package:auto_route/auto_route.dart';

import '../core/loading/loading_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: LoadingPage, initial: true, path: '/loading'),
  ],
)
class $AppRouter {}
