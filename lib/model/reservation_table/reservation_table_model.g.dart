// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservation_table_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReservationModel _$ReservationModelFromJson(Map<String, dynamic> json) =>
    ReservationModel(
      json['id'] as num?,
      json['type'] as num?,
      json['room_id'] as num?,
      json['table_id'] as num?,
      json['num_of_seats'] as num?,
      json['time'] as String?,
      json['period_of_reservations'] as num?,
      json['message'] as String?,
    );

Map<String, dynamic> _$ReservationModelToJson(ReservationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'room_id': instance.room_id,
      'table_id': instance.table_id,
      'num_of_seats': instance.num_of_seats,
      'time': instance.time,
      'period_of_reservations': instance.period_of_reservations,
      'message': instance.message,
    };
