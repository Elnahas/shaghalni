// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      id: json['id'] as String,
      fullName: json['fullName'] as String,
      phone: json['phone'] as String,
      birthDate: json['birthDate'] as String,
      gender: json['gender'] as String,
      city: json['city'] as String,
      createAt: json['createAt'] as String,
      status: json['status'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'phone': instance.phone,
      'birthDate': instance.birthDate,
      'gender': instance.gender,
      'city': instance.city,
      'createAt': instance.createAt,
      'status': instance.status,
      'image': instance.image,
    };
