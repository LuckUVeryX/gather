import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/utils/utils.dart';
import '../models/landing_image.dart';

final landingImageProvider = StateNotifierProvider.autoDispose<LandingImageNotifier, List<LandingImage>>((ref) {
  return LandingImageNotifier();
});

class LandingImageNotifier extends StateNotifier<List<LandingImage>> {
  LandingImageNotifier()
      : super([
          // Makes first image opaque
          for (int i = 0; i < ImagePath.landingPaths.length; i++)
            LandingImage(imageUrl: ImagePath.landingPaths[i], opacity: i == 0 ? 1.0 : 0.0)
        ]) {
    _initTimer();
  }

  Timer? _timer;
  int index = 0;

  static const period = Duration(seconds: 5);

  void _initTimer() {
    _timer = Timer.periodic(period, (_) {
      if (index > state.length - 1) index = 0;
      _toggleOpacity(index);
      index++;
    });
  }

  void _toggleOpacity(int index) {
    state = [
      for (int i = 0; i < state.length; i++)
        if (i == index) state[i].copyWith(opacity: 1.0) else state[i].copyWith(opacity: 0.0)
    ];
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
