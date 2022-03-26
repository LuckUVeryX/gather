import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/loading/loading_page.dart';
import 'core/theme/theme.dart';
import 'features/login/presentation/presentation.dart';
import 'firebase_options.dart';
import 'providers.dart';
import 'router/router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  MyApp({
    Key? key,
  }) : super(key: key);

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final log = ref.watch(loggerProvider);
    return MaterialApp.router(
      title: 'Gather',
      theme: appTheme,
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(
        navigatorObservers: () => [AppRouterObserver(appRouterLogger: log)],
      ),
    );
  }
}

class AuthWrapperPage extends ConsumerWidget {
  const AuthWrapperPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authStateChanges = ref.watch(authStateChangesProvider);
    return authStateChanges.when(
      data: (data) => data == null ? const LandingPage() : const HomePage(),
      error: (_, __) => Scaffold(body: Center(child: Text('Error: $authStateChanges'))),
      loading: () => const LoadingPage(),
    );
  }
}
