import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:shaghalni/core/data/models/city_model.dart';

import '../../helpers/json_helpers.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  final String uid;
  final String fullName;
  final String phoneNumber;
  final String birthDate;
  @JsonKey(fromJson: cityModelFromJson, toJson: cityModelToJson)
  final CityModel city;
  final String gender;
  final bool isOnline;
  final bool isSuspended;
  final String? imageUrl;
  @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
  final Timestamp createdAt;

  UserModel(
      {required this.uid,
      required this.fullName,
      required this.phoneNumber,
      required this.birthDate,
      required this.city,
      required this.gender,
      this.isOnline = false,
      this.isSuspended = false,
      this.imageUrl,
      required this.createdAt});

  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);




}
