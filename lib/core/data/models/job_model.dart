import 'package:json_annotation/json_annotation.dart';
import 'package:shaghalni/core/data/models/category_model.dart';
import 'package:shaghalni/core/data/models/city_model.dart';

import '../enum/job_status.dart';
part 'job_model.g.dart';

@JsonSerializable()
class JobModel {
  final String id;
  final String title;
  final String description;
  @JsonKey(fromJson: _cityModelFromJson, toJson: _cityModelToJson)
  final CityModel city;
  @JsonKey(fromJson: _categoryModelFromJson, toJson: _categoryModelToJson)
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
  @JsonKey(name: 'views')
  final int views; 
  @JsonKey(name: 'posted_by' , fromJson: _postedByFromJson, toJson: _postedByToJson)
  final PostedBy postedBy;

  factory JobModel.fromJson(Map<String, dynamic> json) =>
      _$JobModelFromJson(json);

  JobModel(
      {required this.id,
      required this.title,
      required this.description,
      required this.city,
      required this.category,
      required this.salary,
      required this.isHideSalary,
      required this.status,
      required this.createdAt,
      required this.updatedAt,
      required this.views,
      required this.postedBy});
  Map<String, dynamic> toJson() => _$JobModelToJson(this);

  static CategoryModel _categoryModelFromJson(dynamic json) {
    return CategoryModel.fromJson(json);
  }

  static dynamic _categoryModelToJson(CategoryModel category) {
    return category.toJson();
  }

    static CityModel _cityModelFromJson(dynamic json) {
    return CityModel.fromJson(json);
  }

  static dynamic _cityModelToJson(CityModel city) {
    return city.toJson();
  }

  static JobStatus _statusFromJson(String status) {
    return JobStatusExtension.fromString(status);
  }

  static String _statusToJson(JobStatus status) {
    return status.toShortString();
  }




    static PostedBy _postedByFromJson(dynamic json) {
    return PostedBy.fromJson(json);
  }

  static dynamic _postedByToJson(PostedBy postedBy) {
    return postedBy.toJson();
  }
}

@JsonSerializable()
class PostedBy {
  final String userId;
  final String name;
  @JsonKey(name: "phone_number")
  final String phoneNumber;

  PostedBy(
    {required this.phoneNumber, 
    required this.userId,
    required this.name,
  });

  factory PostedBy.fromJson(Map<String, dynamic> json) =>
      _$PostedByFromJson(json);
  Map<String, dynamic> toJson() => _$PostedByToJson(this);
}
