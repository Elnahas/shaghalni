import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  String id;
  String fullName;
  String phone;
  String birthDate;
  String gender;
  String city;
  String createAt;
  String status;
  String image;

  UserModel(
      {required this.id,
      required this.fullName,
      required this.phone,
      required this.birthDate,
      required this.gender,
      required this.city,
      required this.createAt,
      required this.status,
      required this.image});

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
