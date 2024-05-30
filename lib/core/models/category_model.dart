import 'package:json_annotation/json_annotation.dart';
part 'category_model.g.dart';
@JsonSerializable()
class CategoryModel {
  final String id;
  final String name;
  final String description;
  final String iconUrl;
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
