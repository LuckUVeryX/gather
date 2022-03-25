// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'landing_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LandingImageTearOff {
  const _$LandingImageTearOff();

  _LandingImage call({required String imageUrl, required double opacity}) {
    return _LandingImage(
      imageUrl: imageUrl,
      opacity: opacity,
    );
  }
}

/// @nodoc
const $LandingImage = _$LandingImageTearOff();

/// @nodoc
mixin _$LandingImage {
  String get imageUrl => throw _privateConstructorUsedError;
  double get opacity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LandingImageCopyWith<LandingImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LandingImageCopyWith<$Res> {
  factory $LandingImageCopyWith(
          LandingImage value, $Res Function(LandingImage) then) =
      _$LandingImageCopyWithImpl<$Res>;
  $Res call({String imageUrl, double opacity});
}

/// @nodoc
class _$LandingImageCopyWithImpl<$Res> implements $LandingImageCopyWith<$Res> {
  _$LandingImageCopyWithImpl(this._value, this._then);

  final LandingImage _value;
  // ignore: unused_field
  final $Res Function(LandingImage) _then;

  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? opacity = freezed,
  }) {
    return _then(_value.copyWith(
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      opacity: opacity == freezed
          ? _value.opacity
          : opacity // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$LandingImageCopyWith<$Res>
    implements $LandingImageCopyWith<$Res> {
  factory _$LandingImageCopyWith(
          _LandingImage value, $Res Function(_LandingImage) then) =
      __$LandingImageCopyWithImpl<$Res>;
  @override
  $Res call({String imageUrl, double opacity});
}

/// @nodoc
class __$LandingImageCopyWithImpl<$Res> extends _$LandingImageCopyWithImpl<$Res>
    implements _$LandingImageCopyWith<$Res> {
  __$LandingImageCopyWithImpl(
      _LandingImage _value, $Res Function(_LandingImage) _then)
      : super(_value, (v) => _then(v as _LandingImage));

  @override
  _LandingImage get _value => super._value as _LandingImage;

  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? opacity = freezed,
  }) {
    return _then(_LandingImage(
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      opacity: opacity == freezed
          ? _value.opacity
          : opacity // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_LandingImage implements _LandingImage {
  _$_LandingImage({required this.imageUrl, required this.opacity});

  @override
  final String imageUrl;
  @override
  final double opacity;

  @override
  String toString() {
    return 'LandingImage(imageUrl: $imageUrl, opacity: $opacity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LandingImage &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.opacity, opacity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(opacity));

  @JsonKey(ignore: true)
  @override
  _$LandingImageCopyWith<_LandingImage> get copyWith =>
      __$LandingImageCopyWithImpl<_LandingImage>(this, _$identity);
}

abstract class _LandingImage implements LandingImage {
  factory _LandingImage({required String imageUrl, required double opacity}) =
      _$_LandingImage;

  @override
  String get imageUrl;
  @override
  double get opacity;
  @override
  @JsonKey(ignore: true)
  _$LandingImageCopyWith<_LandingImage> get copyWith =>
      throw _privateConstructorUsedError;
}
