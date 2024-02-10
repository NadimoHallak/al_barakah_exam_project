import 'package:json_annotation/json_annotation.dart';

part 'tables_model.g.dart';


@JsonSerializable()
class TablesModel {
  final num? id;
  final num? status;
  final List? available_seats;
  final num? category_id;
  final num? room_id;
  final String? message;

  factory TablesModel.fromJson(Map<String, dynamic> json) =>
      _$TablesModelFromJson(json);

  TablesModel(this.id, this.status, this.available_seats, this.category_id,
      this.room_id, this.message);

  Map<String, dynamic> toJson() => _$TablesModelToJson(this);
}
