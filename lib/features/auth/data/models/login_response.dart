import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/user.dart';

part 'login_response.freezed.dart';
part 'login_response.g.dart';

@freezed
abstract class LoginResponse with _$LoginResponse{
  const factory LoginResponse({
    required String tokenType,
    required User user,
  @JsonKey(name: 'bearer_token') required String accessToken,
  @JsonKey(name: 'refresh_token') String? refreshToken,
}) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) => _$LoginResponseFromJson(json);
}