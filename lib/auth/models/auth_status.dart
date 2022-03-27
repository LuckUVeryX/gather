import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_status.freezed.dart';

@freezed
class AuthStatus with _$AuthStatus {
  const factory AuthStatus.authenticated() = _Authenticated;
  const factory AuthStatus.unauthenticated() = _Unauthenticated;
}
