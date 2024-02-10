import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:study_center/model/tabls/tables_model.dart';
import 'package:study_center/services/tabls/table_services.dart';

part 'table_event.dart';
part 'table_state.dart';

class TableBloc extends Bloc<TableEvent, TableState> {
  TableBloc() : super(TableInitial()) {
    on<FetchTables>((event, emit) async {
      emit(Loading());
      try {
        print("111");
        List<TablesModel> tables =
            await TableServices(Dio()).getByRoomId(event.id);
        print(tables);
        print("333");


        if (tables.isEmpty) {
          emit(ThereIsNoTable());
        } else {
          emit(SuccessFetchingTablesById(tablesById: tables));
        }
      } on DioException catch (e) {
        emit(FieldFetchingTableDioExption(dioException: e));
      } catch (e) {
        emit(FieldFetchingTable(errorMessage: e.toString()));
      }
    });
  }
}
