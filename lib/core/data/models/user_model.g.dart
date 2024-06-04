// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      uid: json['uid'] as String,
      fullName: json['fullName'] as String,
      phoneNumber: json['phoneNumber'] as String,
      birthDate: json['birthDate'] as String,
      city: CityModel.fromJson(json['city'] as Map<String, dynamic>),
      gender: json['gender'] as String,
      isOnline: json['isOnline'] as bool? ?? false,
      isSuspended: json['isSuspended'] as bool? ?? false,
      imageUrl: json['imageUrl'] as String?,
      createdAt: UserModel._timestampFromJson(json['createdAt']),
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'uid': instance.uid,
      'fullName': instance.fullName,
      'phoneNumber': instance.phoneNumber,
      'birthDate': instance.birthDate,
      'city': instance.city,
      'gender': instance.gender,
      'isOnline': instance.isOnline,
      'isSuspended': instance.isSuspended,
      'imageUrl': instance.imageUrl,
      'createdAt': UserModel._timestampToJson(instance.createdAt),
    };
