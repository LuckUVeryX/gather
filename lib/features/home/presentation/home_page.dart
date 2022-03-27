import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../router/router.dart';
import 'presentation.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(signOutProgressNotifierProvider, (prev, next) {
      if (prev is AsyncData && next is AsyncLoading) context.router.push(const LoadingRoute());
    });

    final signOutProgress = ref.watch(signOutProgressNotifierProvider);
    return signOutProgress.when(
      error: (e, _) => Text('Error $e'),
      loading: () => const _HomeView(),
      data: (_) => const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Consumer(builder: (context, ref, child) {
          return ElevatedButton(
            onPressed: () async {
              await ref.read(signOutProgressNotifierProvider.notifier).signOut();
              context.router.popUntilRoot();
            },
            child: const Text('Sign Out'),
          );
        }),
      ),
    );
  }
}
