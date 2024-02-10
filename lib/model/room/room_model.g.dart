// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RoomModel _$RoomModelFromJson(Map<String, dynamic> json) => RoomModel(
      json['id'] as num?,
      json['max_num_of_chairs'] as num?,
      json['status'] as num?,
      json['placeId'] as num?,
    );

Map<String, dynamic> _$RoomModelToJson(RoomModel instance) => <String, dynamic>{
      'id': instance.id,
      'max_num_of_chairs': instance.max_num_of_chairs,
      'status': instance.status,
      'placeId': instance.placeId,
    };
