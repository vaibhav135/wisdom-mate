// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Login _$LoginFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['currentUser', 'email', 'password']);
  return Login(
    currentUser: json['currentUser'] as String,
    email: json['email'] as String,
    password: json['password'] as String,
  );
}

Map<String, dynamic> _$LoginToJson(Login instance) => <String, dynamic>{
      'currentUser': instance.currentUser,
      'email': instance.email,
      'password': instance.password,
    };
