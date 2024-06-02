import 'package:json_annotation/json_annotation.dart';
 part 'category_model.g.dart';
@JsonSerializable()
class CategoryModel {
  final String id;
  final String name;
  final String description;
   @JsonKey(name: 'icon_url')
  final String iconUrl;
   @JsonKey(name: 'cover_image_url')
  final String coverImageUrl;

  CategoryModel(
      {required this.id,
      required this.name,
      required this.description,
      required this.iconUrl,
      required this.coverImageUrl});


  Map<String, dynamic> toJson() => _$CategoryModelToJson(this);

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);

}
