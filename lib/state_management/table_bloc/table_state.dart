// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'table_bloc.dart';

@immutable
sealed class TableState {}

final class TableInitial extends TableState {}

class Loading extends TableState {}

class SuccessFetchingTablesById extends TableState {
  List<TablesModel> tablesById;
  SuccessFetchingTablesById({
    required this.tablesById,
  });
}

class ThereIsNoTable extends TableState{}

class FieldFetchingTableDioExption extends TableState {
  DioException dioException;
  FieldFetchingTableDioExption({
    required this.dioException,
  });
}

class FieldFetchingTable extends TableState {
  dynamic errorMessage;
  FieldFetchingTable({
    required this.errorMessage,
  });
}
