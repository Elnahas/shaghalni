import 'package:json_annotation/json_annotation.dart';
import 'package:shaghalni/core/data/models/category_model.dart';

import '../enum/job_status.dart';
part 'job_model.g.dart';
@JsonSerializable()
class JobModel {
  final String id;
  final String title;
  final String description;
  @JsonKey(name: 'city_name')
  final String cityName;
  @JsonKey(name: 'city_id')
  final String cityId;
  @JsonKey(fromJson: _CategoryModelFromJson, toJson: _CategoryModelToJson)
  final CategoryModel category;
  final double salary;
  @JsonKey(name: 'is_hide_salary')
  final bool isHideSalary;
  @JsonKey(fromJson: _statusFromJson, toJson: _statusToJson)
  final JobStatus status;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  final String company;
  @JsonKey(name: 'is_public')
  final bool isPublic;
  @JsonKey(name: 'views')
  final int views; // Number of views
  @JsonKey(name: 'is_available')
  final bool isAvailable; // Job availability
  @JsonKey(name: 'posted_by')
  final PostedBy postedBy; // Posted by information


  factory JobModel.fromJson(Map<String, dynamic> json) => _$JobModelFromJson(json);

  JobModel({required this.id, required this.title, required this.description, required this.cityName, required this.cityId, required this.category, required this.salary, required this.isHideSalary, required this.status, required this.createdAt, required this.updatedAt, required this.company, required this.isPublic, required this.views, required this.isAvailable, required this.postedBy});
  Map<String, dynamic> toJson() => _$JobModelToJson(this);

  static CategoryModel _CategoryModelFromJson(dynamic json) {
    return CategoryModel.fromJson(json);
  }

  static dynamic _CategoryModelToJson(CategoryModel category) {
    return category.toJson();
  }

  static JobStatus _statusFromJson(String status) {
    return JobStatusExtension.fromString(status);
  }

  static String _statusToJson(JobStatus status) {
    return status.toShortString();
  }
}

@JsonSerializable()
class PostedBy {
  final String userId;
  final String name;
  @JsonKey(name: "phone_number")
  final String phoneNumber;

  PostedBy(this.phoneNumber, {
    required this.userId,
    required this.name,
  });

  factory PostedBy.fromJson(Map<String, dynamic> json) => _$PostedByFromJson(json);
  Map<String, dynamic> toJson() => _$PostedByToJson(this);
}