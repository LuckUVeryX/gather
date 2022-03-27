import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/utils/utils.dart';
import '../../../core/widgets/widgets.dart';
import '../../../router/router.dart';
import 'presentation.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AsyncValue<void>>(loginProgressNotifierProvider, (prev, next) {
      if (prev is AsyncData && next is AsyncLoading) context.router.push(const LoadingRoute());
    });

    final loginProgress = ref.watch(loginProgressNotifierProvider);
    return loginProgress.when(
      error: (e, _) => Text('Error: $e'),
      loading: () => const _LoginView(),
      data: (_) => const _LoginView(),
    );
  }
}

class _LoginView extends StatelessWidget {
  const _LoginView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.onInverseSurface,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const _AppBar(),
          const Spacer(),
          SafeArea(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 12.0),
              width: double.infinity,
              child: Consumer(
                builder: (context, ref, child) {
                  return ElevatedButton(
                    onPressed: () async {
                      await ref.read(loginProgressNotifierProvider.notifier).signInAnonymously();
                      context.router.popUntilRoot();
                    },
                    child: child!,
                  );
                },
                child: const Text('Sign in anonymously'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _AppBar extends StatelessWidget {
  const _AppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      margin: EdgeInsets.zero,
      width: double.infinity,
      decoration: BoxDecoration(
        color: theme.colorScheme.onPrimary,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(32.0),
          bottomRight: Radius.circular(32.0),
        ),
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [const AppTitle(), SvgPicture.asset(ImagePath.kAuthAppBar), const SizedBox(height: 16.0)],
        ),
      ),
    );
  }
}
