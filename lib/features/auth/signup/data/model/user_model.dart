import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  final String uid;
  final String fullName;
  final String phoneNumber;
  final String birthDate;
  final String city;
  final String gender;
  final bool isOnline;
  final bool isSuspended;
  final String? imageUrl;
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

  // factory UserModel.fromJson(Map<String, dynamic> json) {
  //   return UserModel(
  //       id: json['id'],
  //       fullName: json['fullName'],
  //       phone: json['phone'],
  //       birthDate: json['birthDate'],
  //       gender: json['gender'],
  //       city: json['city'],
  //       createAt: json['createAt'],
  //       status: json['status'],
  //       image: json['image']);
  // }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['id'] = this.id;
  //   data['fullName'] = this.fullName;
  //   data['phone'] = this.phone;
  //   data['birthDate'] = this.birthDate;
  //   data['gender'] = this.gender;
  //   data['city'] = this.city;
  //   data['createAt'] = this.createAt;
  //   data['status'] = this.status;
  //   data['image'] = this.image;
  //   return data;
  // }
}
