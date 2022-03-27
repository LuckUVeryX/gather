import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/loading/loading_page.dart';
import '../../home/home.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginProgress = ref.watch(signOutProgressNotifierProvider);
    return loginProgress.when(
      error: (e, _) => Text('Error: $e'),
      loading: () => const LoadingPage(),
      data: (_) => const _ProfileView(),
    );
  }
}

class _ProfileView extends StatelessWidget {
  const _ProfileView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Consumer(builder: (_, ref, child) {
        return ElevatedButton(
          onPressed: () async => await ref.read(signOutProgressNotifierProvider.notifier).signOut(),
          child: const Text('Sign Out'),
        );
      }),
    );
  }
}
