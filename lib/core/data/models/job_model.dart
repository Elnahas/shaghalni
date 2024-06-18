import 'package:json_annotation/json_annotation.dart';
import 'package:shaghalni/core/data/enum/gender.dart';
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
  @JsonKey(fromJson: _genderFromJson, toJson: _genderToJson)
  final Gender gender;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  final int views;
  @JsonKey(
      name: 'posted_by', fromJson: _postedByFromJson, toJson: _postedByToJson)
  final PostedBy? postedBy;
  @JsonKey(
      name: 'experience_range',
      fromJson: _experienceRangeFromJson,
      toJson: _experienceRangeToJson)
  final ExperienceRange? experienceRange;

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
      required this.gender,
      required this.createdAt,
      required this.updatedAt,
      required this.views,
      this.postedBy,
      required this.experienceRange});

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

  static Gender _genderFromJson(String gender) {
    return GenderExtension.fromString(gender);
  }

  static String _genderToJson(Gender gender) {
    return gender.toShortString();
  }

  static PostedBy? _postedByFromJson(dynamic json) {
    return json == null ? null : PostedBy.fromJson(json);
  }

  static dynamic _postedByToJson(PostedBy? postedBy) {
    return postedBy?.toJson();
  }

  static ExperienceRange? _experienceRangeFromJson(dynamic json) {
    return json == null ? null : ExperienceRange.fromJson(json);
  }

  static dynamic _experienceRangeToJson(ExperienceRange? experienceRange) {
    return experienceRange?.toJson();
  }
}

@JsonSerializable()
class PostedBy {
  @JsonKey(name: "uid")
  final String userId;
  @JsonKey(name: "user_name")
  final String userName;
  @JsonKey(name: "phone_number")
  final String phoneNumber;

  PostedBy({
    required this.phoneNumber,
    required this.userId,
    required this.userName,
  });

  factory PostedBy.fromJson(Map<String, dynamic> json) =>
      _$PostedByFromJson(json);
  Map<String, dynamic> toJson() => _$PostedByToJson(this);
}

@JsonSerializable()
class ExperienceRange {
  @JsonKey(name: "min_experience")
  final int minExperience;
  @JsonKey(name: "max_experience")
  final int maxExperience;

  ExperienceRange({required this.minExperience, required this.maxExperience});

  factory ExperienceRange.fromJson(Map<String, dynamic> json) =>
      _$ExperienceRangeFromJson(json);
  Map<String, dynamic> toJson() => _$ExperienceRangeToJson(this);
}
