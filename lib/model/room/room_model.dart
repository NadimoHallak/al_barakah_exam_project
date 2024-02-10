import 'package:json_annotation/json_annotation.dart';

part 'room_model.g.dart';

@JsonSerializable()
class RoomModel {
  RoomModel(this.id, this.max_num_of_chairs, this.status, this.placeId);

  factory RoomModel.fromJson(Map<String, dynamic> json) =>
      _$RoomModelFromJson(json);

  final num? id;
  final num? max_num_of_chairs;
  final num? status;
  final num? placeId;

  Map<String, dynamic> toJson() => _$RoomModelToJson(this);
}
