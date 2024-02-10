import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:study_center/model/room/room_model.dart';
import 'package:study_center/services/room/room_services.dart';

part 'room_event.dart';
part 'room_state.dart';

class RoomBloc extends Bloc<RoomEvent, RoomState> {
  RoomBloc() : super(RoomInitial()) {
    on<FetchRoom>((event, emit) async {
      emit(Loading());
      try {
        List<RoomModel> rooms = await RoomServices(Dio()).getRooms();
        emit(SuccessFetchingRooms(roomsSuccess: rooms));
      } on DioException catch (e) {
        emit(FieldFetchingRoomDioExption(dioException: e));
      } catch (e) {
        emit(FieldFetchingRoom(errorMessage: e.toString()));
      }
    });
  }
}
