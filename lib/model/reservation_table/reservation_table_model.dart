import 'package:json_annotation/json_annotation.dart';

part 'reservation_table_model.g.dart';

@JsonSerializable()
class ReservationModel {
  final num? id;
  final num? type;
  final num? room_id;
  final num? table_id;
  final num? num_of_seats;
  final String? time;
  final num? period_of_reservations;
  final String? message;

  factory ReservationModel.fromJson(Map<String, dynamic> json) =>
      _$ReservationModelFromJson(json);

  ReservationModel(this.id, this.type, this.room_id, this.table_id,
      this.num_of_seats, this.time, this.period_of_reservations, this.message);

  Map<String, dynamic> toJson() => _$ReservationModelToJson(this);
}
