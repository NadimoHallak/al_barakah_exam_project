// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'room_bloc.dart';

@immutable
sealed class RoomState {}

final class RoomInitial extends RoomState {}

class Loading extends RoomState {}

class SuccessFetchingRooms extends RoomState {
  List<RoomModel> roomsSuccess;
  SuccessFetchingRooms({
    required this.roomsSuccess,
  });
}


class FieldFetchingRoomDioExption extends RoomState {
  DioException dioException;
  FieldFetchingRoomDioExption({
    required this.dioException,
  });
}
class FieldFetchingRoom extends RoomState {
  dynamic errorMessage;
  FieldFetchingRoom({
    required this.errorMessage,
  });
}
