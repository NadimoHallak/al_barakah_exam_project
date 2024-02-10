import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import 'package:study_center/model/room/room_model.dart';

part 'room_services.g.dart';
//localhost:8022/api/v1/rooms/1/AllRooms

@RestApi(baseUrl: 'http://localhost:8022/api/v1/rooms/1')
abstract class RoomServices {
  factory RoomServices(Dio dio, {String baseUrl}) = _RoomServices;

  @GET('/AllRooms')
  Future<List<RoomModel>> getRooms();

  @GET('/show/4')
  Future<RoomModel> getRoomById();

  @POST("/newRoom")
  Future<RoomModel> createRoom(@Body() RoomModel room);

  @PUT("/update/{id}")
  Future<RoomModel> updateRoom(@Path() String id, @Body() RoomModel room);

  @DELETE("/delete/{id}")
  Future<void> deleteRoom(@Path() String id);
}
