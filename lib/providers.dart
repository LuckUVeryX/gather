import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

final firebaseAuthProvider = Provider<FirebaseAuth>((ref) => FirebaseAuth.instance);
final authStatusProvider = StateNotifierProvider<AuthStatusNotifier, bool>((ref) {
  return AuthStatusNotifier(ref.watch(firebaseAuthProvider).authStateChanges());
});

final loggerProvider = Provider<Logger>((ref) => Logger(printer: PrettyPrinter()));

class AuthStatusNotifier extends StateNotifier<bool> {
  AuthStatusNotifier(this.authStateChanges) : super(false) {
    _init();
  }

  final Stream<User?> authStateChanges;

  StreamSubscription<User?>? _userStreamSubscription;

  void _init() {
    _userStreamSubscription = authStateChanges.listen((user) {
      if (user != null) {
        state = true;
      } else {
        state = false;
      }
    });
  }

  @override
  void dispose() {
    _userStreamSubscription?.cancel();
    super.dispose();
  }
}
