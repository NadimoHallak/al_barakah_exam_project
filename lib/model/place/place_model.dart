import 'package:json_annotation/json_annotation.dart';

part 'place_model.g.dart';

@JsonSerializable()
class PlaceModel {
  final num? id;
  final String? name;
  final List? locations;

  factory PlaceModel.fromJson(Map<String, dynamic> json) =>
      _$PlaceModelFromJson(json);

  PlaceModel(this.id, this.name, this.locations);

  Map<String, dynamic> toJson() => _$PlaceModelToJson(this);
}
