import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_center/state_management/room_bloc/room_bloc.dart';
import 'package:study_center/state_management/table_bloc/table_bloc.dart';
import 'package:study_center/view/pages/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => RoomBloc(),
        ),
        BlocProvider(
          create: (context) => TableBloc(),
        )
      ],
      child: MaterialApp(
        home: MainPage(),
      ),
    );
  }
}
