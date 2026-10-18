// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    _LoginResponse(
      tokenType: json['tokenType'] as String,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      accessToken: json['bearer_token'] as String,
      refreshToken: json['refresh_token'] as String?,
    );

Map<String, dynamic> _$LoginResponseToJson(_LoginResponse instance) =>
    <String, dynamic>{
      'tokenType': instance.tokenType,
      'user': instance.user,
      'bearer_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
    };
