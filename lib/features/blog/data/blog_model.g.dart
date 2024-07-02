// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model/blog_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BlogModel _$BlogModelFromJson(Map<String, dynamic> json) => BlogModel(
      json['id'] as String?,
      imageUrl: json['image_url'] as String,
      title: json['title'] as String,
      details: json['details'] as String,
      createdAt: timestampFromJson(json['created_at']),
    );

Map<String, dynamic> _$BlogModelToJson(BlogModel instance) => <String, dynamic>{
      'id': instance.id,
      'image_url': instance.imageUrl,
      'title': instance.title,
      'details': instance.details,
      'created_at': timestampToJson(instance.createdAt),
    };
