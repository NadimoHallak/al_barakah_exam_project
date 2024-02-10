import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:study_center/model/table_category/table_category_model.dart';

part 'table_category_services.g.dart';

@RestApi(baseUrl: 'http://localhost:8022/api/v1/table-category')
abstract class TableCategoryServices {
  factory TableCategoryServices(Dio dio, {String baseUrl}) =
      _TableCategoryServices;

  @GET('/AllTables')
  Future<List<TableCategoryModel>> getAllTableCategory();

  @GET('/{id}')
  Future<TableCategoryModel> getTableCategory();

  @POST('/newTable')
  Future<TableCategoryModel> createTableCategory(
      @Body() TableCategoryModel tableCategory);

  @PUT('/update/2')
  Future<TableCategoryModel> updateTableCategory(
      @Path() String id, @Body() TableCategoryModel tableCategory);

  @DELETE("/info?id={id}")
  Future<void> deleteTableCategory(@Path() String id);
}
