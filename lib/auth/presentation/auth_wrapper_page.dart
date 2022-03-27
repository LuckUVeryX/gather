import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/loading/loading_page.dart';
import '../../features/home/presentation/presentation.dart';
import '../../features/login/presentation/presentation.dart';
import '../auth.dart';

class AuthWrapperPage extends ConsumerWidget {
  const AuthWrapperPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AsyncValue<AuthStatus>>(authStatusProvider, (previous, next) {
      if (previous != next) context.router.popUntilRoot();
    });
    final authStatus = ref.watch(authStatusProvider);
    return authStatus.when<Widget>(
      data: (auth) => auth.when<Widget>(
        authenticated: () => const HomeWrapperPage(),
        unauthenticated: () => const LandingPage(),
      ),
      error: (_, __) => Scaffold(body: Center(child: Text('Error: $authStatus'))),
      loading: () => const LoadingPage(),
    );
  }
}
