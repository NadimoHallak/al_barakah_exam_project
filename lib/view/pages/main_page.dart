import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_center/model/room/room_model.dart';
import 'package:study_center/state_management/room_bloc/room_bloc.dart';
import 'package:study_center/view/pages/room_page.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  int page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          StatefulBuilder(
            builder: (context, setState) {
              return NavigationRail(
                onDestinationSelected: (value) {
                  setState(
                    () {
                      page = value;
                    },
                  );
                },
                labelType: NavigationRailLabelType.all,
                indicatorColor: const Color(0xFF0369a1),
                backgroundColor: const Color(0xFF082f49),
                destinations: const <NavigationRailDestination>[
                  NavigationRailDestination(
                    icon: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    label: Text(
                      "Home",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  NavigationRailDestination(
                    icon: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    label: Text(
                      "Add",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  NavigationRailDestination(
                    icon: Icon(
                      Icons.system_update_alt,
                      color: Colors.white,
                    ),
                    label: Text(
                      "Update",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
                selectedIndex: page,
              );
            },
          ),
          [
            const DisplayRooms(),
          ][page]
        ],
      ),
    );
  }
}

class DisplayRooms extends StatelessWidget {
  const DisplayRooms({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return BlocBuilder<RoomBloc, RoomState>(
        builder: (context, state) {
          if (state is Loading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is SuccessFetchingRooms) {
            return Expanded(
              child: ListView.builder(
                itemCount: state.roomsSuccess.length,
                itemBuilder: (context, index) {
                  RoomModel room = state.roomsSuccess[index];
                  return InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RoomPage(
                            id: room.id.toString(),
                          ),
                        ),
                      );
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => RoomPage(
                      //       id: room.id.toString(),
                      //     ),
                      //   ),
                      // );
                    },
                    child: ListTile(
                      title: RichText(
                        text: TextSpan(
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF082f49),
                          ),
                          text: "Chair number: ",
                          children: [
                            TextSpan(
                              text: room.max_num_of_chairs.toString(),
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              ),
                            )
                          ],
                        ),
                      ),
                      subtitle: room.status == null
                          ? const Text(
                              "There is no status",
                              style: TextStyle(
                                color: Color(0xFF0369a1),
                              ),
                            )
                          : room.status == 1
                              ? const Text(
                                  "Calm room",
                                  style: TextStyle(
                                    color: Color(0xFF0369a1),
                                  ),
                                )
                              : room.status == 2
                                  ? const Text(
                                      'nois room',
                                      style: TextStyle(
                                        color: Color(0xFF0369a1),
                                      ),
                                    )
                                  : Text(
                                      room.status.toString(),
                                      style: const TextStyle(
                                        color: Color(0xFF0369a1),
                                      ),
                                    ),
                    ),
                  );
                },
              ),
            );
          } else if (state is FieldFetchingRoomDioExption) {
            return Center(
              child: Container(
                width: 300,
                child: Text(
                  state.dioException.message.toString(),
                ),
              ),
            );
          } else if (state is FieldFetchingRoom) {
            return Center(
              child: Text(state.errorMessage.toString()),
            );
          } else {
            context.read<RoomBloc>().add(FetchRoom());
            return const Center(
              child: Text('Loading Data'),
            );
          }
        },
      );
    });
  }
}

// 082f49
//0369a1
