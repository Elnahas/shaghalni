import 'package:json_annotation/json_annotation.dart';
import 'package:shaghalni/core/data/enum/gender.dart';
import 'package:shaghalni/core/data/enum/job_type.dart';
import 'package:shaghalni/core/data/models/category_model.dart';
import 'package:shaghalni/core/data/models/city_model.dart';
import '../enum/job_status.dart';

part 'job_model.g.dart';

typedef Json = Map<String, dynamic>;

@JsonSerializable()
class JobModel {
  final String? id;
  final String title;
  final String description;
  @JsonKey(fromJson: CityModel.fromJson, toJson: _cityModelToJson)
  final CityModel city;
  @JsonKey(fromJson: CategoryModel.fromJson, toJson: _categoryModelToJson)
  final CategoryModel category;
  final double salary;
  @JsonKey(name: 'is_hide_salary')
  final bool isHideSalary;
  @JsonKey(fromJson: JobStatusExtension.fromString, toJson: _statusToJson)
  final JobStatus status;
  @JsonKey(fromJson: GenderExtension.fromString, toJson: _genderToJson)
  final Gender gender;
  @JsonKey(name: "job_type", fromJson: JobTypeExtension.fromString, toJson: _jobTypeToJson)
  final JobType jobType;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  final int? views;
  @JsonKey(name: 'posted_by', fromJson: PostedBy.fromJson, toJson: _postedByToJson)
  final PostedBy? postedBy;
  @JsonKey(name: 'experience_range', fromJson: ExperienceRange.fromJson, toJson: _experienceRangeToJson)
  final ExperienceRange? experienceRange;

  const JobModel({
    this.id,
    required this.title,
    required this.description,
    required this.city,
    required this.category,
    required this.salary,
    required this.isHideSalary,
    required this.status,
    required this.gender,
    required this.jobType,
    required this.createdAt,
    required this.updatedAt,
     this.views = 0,
    this.postedBy,
    required this.experienceRange,
  });

  factory JobModel.fromJson(Json json) => _$JobModelFromJson(json);
  Json toJson() => _$JobModelToJson(this);

  static Json _categoryModelToJson(CategoryModel category) => category.toJson();
  static Json _cityModelToJson(CityModel city) => city.toJson();
  static String _statusToJson(JobStatus status) => status.toShortString();
  static String _genderToJson(Gender gender) => gender.toShortString();
  static String _jobTypeToJson(JobType jobType) => jobType.toShortString();
  static Json? _postedByToJson(PostedBy? postedBy) => postedBy?.toJson();
  static Json? _experienceRangeToJson(ExperienceRange? experienceRange) => experienceRange?.toJson();
}

@JsonSerializable()
class PostedBy {
  @JsonKey(name: "uid")
  final String userId;
  @JsonKey(name: "user_name")
  final String userName;
  @JsonKey(name: "phone_number")
  final String phoneNumber;

  const PostedBy({
    required this.userId,
    required this.userName,
    required this.phoneNumber,
  });

  factory PostedBy.fromJson(Json json) => _$PostedByFromJson(json);
  Json toJson() => _$PostedByToJson(this);
}

@JsonSerializable()
class ExperienceRange {
  @JsonKey(name: "min_experience")
  final int minExperience;
  @JsonKey(name: "max_experience")
  final int maxExperience;

  const ExperienceRange({
    required this.minExperience,
    required this.maxExperience,
  });

  factory ExperienceRange.fromJson(Json json) => _$ExperienceRangeFromJson(json);
  Json toJson() => _$ExperienceRangeToJson(this);
}
