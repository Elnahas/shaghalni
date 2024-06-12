// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      uid: json['uid'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      phoneNumber: json['phone_number'] as String,
      birthDate: json['birth_date'] as String,
      city: cityModelFromJson(json['city']),
      gender: json['gender'] as String,
      isOnline: json['is_online'] as bool? ?? false,
      isSuspended: json['is_suspended'] as bool? ?? false,
      imageUrl: json['image_url'] as String?,
      createdAt: timestampFromJson(json['created_at']),
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'uid': instance.uid,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'phone_number': instance.phoneNumber,
      'birth_date': instance.birthDate,
      'city': cityModelToJson(instance.city),
      'gender': instance.gender,
      'is_online': instance.isOnline,
      'is_suspended': instance.isSuspended,
      'image_url': instance.imageUrl,
      'created_at': timestampToJson(instance.createdAt),
    };
