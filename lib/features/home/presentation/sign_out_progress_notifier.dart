import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../auth/repositories/repositories.dart';

final signOutProgressNotifierProvider = StateNotifierProvider<SignOutProgressNotifier, AsyncValue<void>>((ref) {
  return SignOutProgressNotifier(ref.watch(authRepositoryProvider));
});

class SignOutProgressNotifier extends StateNotifier<AsyncValue<void>> {
  SignOutProgressNotifier(
    this._authRepository,
  ) : super(const AsyncValue.data(null));

  final AuthRepository _authRepository;

  Future<void> signOut() async {
    state = const AsyncValue.loading();
    try {
      await _authRepository.signOut();
      state = const AsyncValue.data(null);
    } on AuthException catch (e) {
      state = AsyncValue.error(e);
    }
  }
}
