import 'package:json_annotation/json_annotation.dart';

part 'table_category_model.g.dart';

@JsonSerializable()
class TableCategoryModel {
  final num? id;
  final num? num_of_seats;
  final String? shape;

  TableCategoryModel(this.id, this.num_of_seats, this.shape);
  factory TableCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$TableCategoryModelFromJson(json);
  Map<String, dynamic> toJson() => _$TableCategoryModelToJson(this);
}
