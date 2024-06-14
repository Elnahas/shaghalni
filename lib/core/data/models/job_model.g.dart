// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobModel _$JobModelFromJson(Map<String, dynamic> json) => JobModel(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      city: JobModel._cityModelFromJson(json['city']),
      category: JobModel._categoryModelFromJson(json['category']),
      salary: (json['salary'] as num).toDouble(),
      isHideSalary: json['is_hide_salary'] as bool,
      status: JobModel._statusFromJson(json['status'] as String),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      views: (json['views'] as num).toInt(),
      postedBy: JobModel._postedByFromJson(json['posted_by']),
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
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'views': instance.views,
      'posted_by': JobModel._postedByToJson(instance.postedBy),
    };

PostedBy _$PostedByFromJson(Map<String, dynamic> json) => PostedBy(
      phoneNumber: json['phone_number'] as String,
      userId: json['uid'] as String,
      userName: json['user_name'] as String,
    );

Map<String, dynamic> _$PostedByToJson(PostedBy instance) => <String, dynamic>{
      'uid': instance.userId,
      'user_name': instance.userName,
      'phone_number': instance.phoneNumber,
    };
