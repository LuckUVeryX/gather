import 'dart:async';
import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';

import '../models/models.dart';

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  // ? FakeAuthRepository, FirebaseAuthRepository,
  return FakeAuthRepository();
});

final authStatusProvider = StreamProvider.autoDispose<AuthStatus>((ref) {
  return ref.watch(authRepositoryProvider).authStatus();
});

abstract class AuthRepository {
  /// Notifies about changes to the user's sign-in state (such as sign-in or sign-out).
  Stream<AuthStatus> authStatus();

  /// Asynchronously creates and becomes an anonymous user.
  ///
  /// Throws [AuthException] if theres error creating anonymous user.
  Future<void> signInAnonymously();

  /// Signs out the current user.
  ///
  /// If successful, it updates any [authStatus] stream listeners.
  Future<void> signOut();
}

class FirebaseAuthRepository implements AuthRepository {
  FirebaseAuthRepository({required Logger log, required FirebaseAuth auth})
      : _log = log,
        _auth = auth;

  final FirebaseAuth _auth;
  final Logger _log;

  @override
  Stream<AuthStatus> authStatus() => _auth
      .authStateChanges()
      .map((User? user) => user == null ? const AuthStatus.unauthenticated() : const AuthStatus.authenticated());

  @override
  Future<void> signInAnonymously() async {
    try {
      final userCredential = await _auth.signInAnonymously();
      _log.d(userCredential);
    } on FirebaseAuthException {
      throw AuthException();
    }
  }

  @override
  Future<void> signOut() async => await _auth.signOut();
}

class FakeAuthRepository implements AuthRepository {
  late final StreamController<AuthStatus> _authController;

  static const _initialAuthStatus = AuthStatus.unauthenticated();
  static const _maxDelayDeviation = 1000;
  static const _minDelayInMilliseconds = 500;

  @override
  Stream<AuthStatus> authStatus() {
    _authController = StreamController<AuthStatus>(
      onListen: () async {
        await _delay();
        _authController.add(_initialAuthStatus);
      },
    );
    return _authController.stream;
  }

  @override
  Future<void> signInAnonymously() async {
    await _delay();
    _authController.add(const AuthStatus.authenticated());
  }

  @override
  Future<void> signOut() async {
    await _delay();
    _authController.add(const AuthStatus.unauthenticated());
  }

  Future<void> _delay() async {
    await Future.delayed(Duration(milliseconds: _minDelayInMilliseconds + Random().nextInt(_maxDelayDeviation)));
  }
}

class AuthException implements Exception {}
