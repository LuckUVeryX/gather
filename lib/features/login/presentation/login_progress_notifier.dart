import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../auth/auth.dart';

final loginProgressNotifierProvider = StateNotifierProvider<LoginProgressNotifier, AsyncValue<void>>((ref) {
  return LoginProgressNotifier(ref.watch(authRepositoryProvider));
});

class LoginProgressNotifier extends StateNotifier<AsyncValue<void>> {
  LoginProgressNotifier(
    this._authRepository,
  ) : super(const AsyncValue.data(null));

  final AuthRepository _authRepository;

  Future<void> signInAnonymously() async {
    state = const AsyncValue.loading();
    try {
      await _authRepository.signInAnonymously();
      state = const AsyncValue.data(null);
    } on AuthException catch (e) {
      state = AsyncValue.error(e);
    }
  }
}
