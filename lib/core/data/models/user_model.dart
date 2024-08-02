import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:shaghalni/core/data/models/city_model.dart';

import '../../helpers/json_helpers.dart';
part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  final String uid;
  @JsonKey(name: 'first_name')
  final String firstName;
  @JsonKey(name: 'last_name')
  final String lastName;
  String get fullName => '$firstName $lastName';
  @JsonKey(name: 'phone_number')
  final String phoneNumber;
  @JsonKey(
    name: 'birth_date', fromJson: timestampFromJson, toJson: timestampToJson
  )
  final Timestamp birthDate;
  @JsonKey(fromJson: cityModelFromJson, toJson: cityModelToJson)
  final CityModel city;
  final String gender;
  @JsonKey(name: 'is_online')
  final bool isOnline;
  @JsonKey(name: 'is_suspended')
  final bool isSuspended;
  @JsonKey(name: 'image_url')
  final String? imageUrl;
  @JsonKey(
      name: "created_at", fromJson: timestampFromJson, toJson: timestampToJson)
  final Timestamp createdAt;

  UserModel({
    required this.uid,
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    required this.birthDate,
    required this.city,
    required this.gender,
    this.isOnline = false,
    this.isSuspended = false,
    this.imageUrl,
    required this.createdAt,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}


int timestampToJson(Timestamp timestamp) => timestamp.millisecondsSinceEpoch;
Timestamp timestampFromJson(int milliseconds) => Timestamp.fromMillisecondsSinceEpoch(milliseconds);