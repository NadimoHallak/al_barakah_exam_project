import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_center/state_management/table_bloc/table_bloc.dart';
import 'package:study_center/view/pages/main_page.dart';

class RoomPage extends StatelessWidget {
  RoomPage({super.key, required this.id});
  String id;
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MainPage(),
                  ),
                );
              },
              icon: Icon(Icons.arrow_back)),
        ),
        body: BlocBuilder<TableBloc, TableState>(
          builder: (context, state) {
            if (state is Loading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is SuccessFetchingTablesById) {
              return ListView.builder(
                itemCount: state.tablesById.length,
                itemBuilder: (context, index) {
                  var tables = state.tablesById;
                  return tables.isEmpty
                      ? const Center(child: Text("There is no tables"))
                      : const ListTile(
                          title: Text("nadim"),
                        );
                },
              );
            } else if (state is ThereIsNoTable) {
              return const Center(
                child: Text("There is no table"),
              );
            } else if (state is FieldFetchingTableDioExption) {
              return Center(
                child: Container(
                  width: 300,
                  child: Text(
                    state.dioException.message.toString(),
                  ),
                ),
              );
            } else if (state is FieldFetchingTable) {
              return Center(
                child: Text(state.errorMessage.toString()),
              );
            } else {
              context.read<TableBloc>().add(FetchTables(id: id));
              return const Center(
                child: LinearProgressIndicator(),
              );
            }
          },
        ),
      );
    });
  }
}
