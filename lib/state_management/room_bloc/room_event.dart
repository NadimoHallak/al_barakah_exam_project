part of 'room_bloc.dart';

@immutable
sealed class RoomEvent {}

class FetchRoom extends RoomEvent{}
