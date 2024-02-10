// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'table_bloc.dart';

@immutable
sealed class TableEvent {}

class FetchTables extends TableEvent {
  String id;
  FetchTables({
    required this.id,
  });
}
