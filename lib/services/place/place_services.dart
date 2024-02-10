import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:study_center/model/place/place_model.dart';

part 'place_services.g.dart';

@RestApi(baseUrl: 'http://localhost:8022/api/v1/places')
abstract class PlaceServices {
  factory PlaceServices(Dio dio, {String baseUrl}) = _PlaceServices;

  @GET('/allplaces')
  Future<List<PlaceModel>> getAllPlaces();

  @POST('/newplace')
  Future<PlaceModel> createPlace(@Body() PlaceModel place);
}
