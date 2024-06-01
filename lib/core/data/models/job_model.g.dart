// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobModel _$JobModelFromJson(Map<String, dynamic> json) => JobModel(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      cityName: json['city_name'] as String,
      cityId: json['city_id'] as String,
      category: JobModel._CategoryModelFromJson(json['category']),
      salary: (json['salary'] as num).toDouble(),
      isHideSalary: json['is_hide_salary'] as bool,
      status: JobModel._statusFromJson(json['status'] as String),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      company: json['company'] as String,
      isPublic: json['is_public'] as bool,
      views: (json['views'] as num).toInt(),
      isAvailable: json['is_available'] as bool,
      postedBy: PostedBy.fromJson(json['posted_by'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$JobModelToJson(JobModel instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'city_name': instance.cityName,
      'city_id': instance.cityId,
      'category': JobModel._CategoryModelToJson(instance.category),
      'salary': instance.salary,
      'is_hide_salary': instance.isHideSalary,
      'status': JobModel._statusToJson(instance.status),
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'company': instance.company,
      'is_public': instance.isPublic,
      'views': instance.views,
      'is_available': instance.isAvailable,
      'posted_by': instance.postedBy,
    };

PostedBy _$PostedByFromJson(Map<String, dynamic> json) => PostedBy(
      json['phone_number'] as String,
      userId: json['userId'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$PostedByToJson(PostedBy instance) => <String, dynamic>{
      'userId': instance.userId,
      'name': instance.name,
      'phone_number': instance.phoneNumber,
    };
