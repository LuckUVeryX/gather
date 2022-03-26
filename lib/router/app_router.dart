import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../features/login/login.dart';
import '../main.dart';
import '../providers.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: AuthWrapperPage, path: '/', initial: true),
    AutoRoute(page: LoginPage, path: '/login'),
    AutoRoute(page: LandingPage, path: '/landing'),
    AutoRoute(page: HomePage, path: '/home'),
  ],
)
class $AppRouter {}

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: ElevatedButton(
          onPressed: () => ref.read(firebaseAuthProvider).signOut(),
          child: const Text('Sign Out'),
        ),
      ),
    );
  }
}
