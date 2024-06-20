// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobModel _$JobModelFromJson(Map<String, dynamic> json) => JobModel(
      id: json['id'] as String?,
      title: json['title'] as String,
      description: json['description'] as String,
      city: CityModel.fromJson(json['city'] as Map<String, dynamic>),
      category:
          CategoryModel.fromJson(json['category'] as Map<String, dynamic>),
      salary: (json['salary'] as num).toDouble(),
      isHideSalary: json['is_hide_salary'] as bool,
      status: JobStatusExtension.fromString(json['status'] as String),
      gender: GenderExtension.fromString(json['gender'] as String),
      jobType: JobTypeExtension.fromString(json['job_type'] as String),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      views: (json['views'] as num).toInt(),
      postedBy: PostedBy.fromJson(json['posted_by'] as Map<String, dynamic>),
      experienceRange: ExperienceRange.fromJson(
          json['experience_range'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$JobModelToJson(JobModel instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'city': JobModel._cityModelToJson(instance.city),
      'category': JobModel._categoryModelToJson(instance.category),
      'salary': instance.salary,
      'is_hide_salary': instance.isHideSalary,
      'status': JobModel._statusToJson(instance.status),
      'gender': JobModel._genderToJson(instance.gender),
      'job_type': JobModel._jobTypeToJson(instance.jobType),
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'views': instance.views,
      'posted_by': JobModel._postedByToJson(instance.postedBy),
      'experience_range':
          JobModel._experienceRangeToJson(instance.experienceRange),
    };

PostedBy _$PostedByFromJson(Map<String, dynamic> json) => PostedBy(
      userId: json['uid'] as String,
      userName: json['user_name'] as String,
      phoneNumber: json['phone_number'] as String,
    );

Map<String, dynamic> _$PostedByToJson(PostedBy instance) => <String, dynamic>{
      'uid': instance.userId,
      'user_name': instance.userName,
      'phone_number': instance.phoneNumber,
    };

ExperienceRange _$ExperienceRangeFromJson(Map<String, dynamic> json) =>
    ExperienceRange(
      minExperience: (json['min_experience'] as num).toInt(),
      maxExperience: (json['max_experience'] as num).toInt(),
    );

Map<String, dynamic> _$ExperienceRangeToJson(ExperienceRange instance) =>
    <String, dynamic>{
      'min_experience': instance.minExperience,
      'max_experience': instance.maxExperience,
    };
