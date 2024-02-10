// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Room {
   num id;
   num max_num_of_chairs;
   num status;
   num placeId;
  Room({
    required this.id,
    required this.max_num_of_chairs,
    required this.status,
    required this.placeId,
  });

  Room copyWith({
    num? id,
    num? max_num_of_chairs,
    num? status,
    num? placeId,
  }) {
    return Room(
      id: id ?? this.id,
      max_num_of_chairs: max_num_of_chairs ?? this.max_num_of_chairs,
      status: status ?? this.status,
      placeId: placeId ?? this.placeId,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'max_num_of_chairs': max_num_of_chairs,
      'status': status,
      'placeId': placeId,
    };
  }

  factory Room.fromMap(Map<String, dynamic> map) {
    return Room(
      id: map['id'] as num,
      max_num_of_chairs: map['max_num_of_chairs'] as num,
      status: map['status'] as num,
      placeId: map['placeId'] as num,
    );
  }

  String toJson() => json.encode(toMap());

  factory Room.fromJson(String source) => Room.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Room(id: $id, max_num_of_chairs: $max_num_of_chairs, status: $status, placeId: $placeId)';
  }

  @override
  bool operator ==(covariant Room other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.max_num_of_chairs == max_num_of_chairs &&
      other.status == status &&
      other.placeId == placeId;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      max_num_of_chairs.hashCode ^
      status.hashCode ^
      placeId.hashCode;
  }
}
