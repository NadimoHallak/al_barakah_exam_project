import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:study_center/model/reservation_table/reservation_table_model.dart';

part 'reservation_table_services.g.dart';

@RestApi(baseUrl: 'http://localhost:8022/api/v1/reservation/')
abstract class ReservationServices {
  factory ReservationServices(Dio dio, {String baseUrl}) = _ReservationServices;

  @GET('/getAll')
  Future<List<ReservationModel>> getAllReservation();

  @POST('/reservation/{id}')
  Future<ReservationModel> createReservation(
      @Path() String table_id, @Body() ReservationModel reservationModel);

  @DELETE('/cancelReservation/{id}')
  Future<void> deleteReservation(@Path() id);
}
