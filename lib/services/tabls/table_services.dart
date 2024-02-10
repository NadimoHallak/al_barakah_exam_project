

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:study_center/model/tabls/tables_model.dart';

part 'table_services.g.dart';

@RestApi(baseUrl: 'http://localhost:8022/api/v1/tables')
abstract class TableServices {
  factory TableServices(Dio dio, {String baseUrl}) = _TableServices;

  @GET('/AllTables')
  Future<List<TablesModel>> getAllTables();

  @GET('/{id}')
  Future<TablesModel> gitTableById(@Path() String id);

  @GET('/findByRoomId/{room_id}')
  Future<List<TablesModel>> getByRoomId(@Path() String room_id);

  @POST('/newTable')
  Future<TablesModel> createTable(@Body() TablesModel table);

  @PUT('/update/{id}')
  Future<TablesModel> updateTable(@Path() String id, @Body() TablesModel table);

  @DELETE('/delete/{id}')
  Future<void> deleteTable(@Path() String id);
}
