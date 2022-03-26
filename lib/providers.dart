import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

// * Logger
final loggerProvider = Provider<Logger>((ref) => Logger(printer: PrettyPrinter()));

// * Auth
final firebaseAuthProvider = Provider<FirebaseAuth>((ref) => FirebaseAuth.instance);

final authStateChangesProvider =
    StreamProvider.autoDispose<User?>((ref) => ref.watch(firebaseAuthProvider).authStateChanges());
