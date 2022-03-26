import 'package:freezed_annotation/freezed_annotation.dart';

part 'landing_image.freezed.dart';

@freezed
class LandingImage with _$LandingImage {
  factory LandingImage({required String imageUrl, required double opacity}) = _LandingImage;
}
