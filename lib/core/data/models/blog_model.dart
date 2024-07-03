import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../helpers/json_helpers.dart';

part 'blog_model.g.dart';

@JsonSerializable()
class BlogModel {
  final String? id;
  @JsonKey(name: "image_url")
  final String imageUrl;
  final String title;
  final String details;
  @JsonKey(name: "created_at",fromJson: timestampFromJson, toJson: timestampToJson)
  final Timestamp createdAt;

  BlogModel(this.id, {
    required this.imageUrl,
    required this.title,
    required this.details,
    required this.createdAt,
  });

  factory BlogModel.fromJson(Map<String, dynamic> json) => _$BlogModelFromJson(json);

  Map<String, dynamic> toJson() => _$BlogModelToJson(this);
}