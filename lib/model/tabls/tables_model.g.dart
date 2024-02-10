// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tables_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TablesModel _$TablesModelFromJson(Map<String, dynamic> json) => TablesModel(
      json['id'] as num?,
      json['status'] as num?,
      json['available_seats'] as List<dynamic>?,
      json['category_id'] as num?,
      json['room_id'] as num?,
      json['message'] as String?,
    );

Map<String, dynamic> _$TablesModelToJson(TablesModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'available_seats': instance.available_seats,
      'category_id': instance.category_id,
      'room_id': instance.room_id,
      'message': instance.message,
    };
