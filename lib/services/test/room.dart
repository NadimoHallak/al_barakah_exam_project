import 'package:dio/dio.dart';
import 'package:study_center/model/test/room.dart';

class RoomSer {
  Dio dio = Dio();

  Future getRoom1() async {
    try {
      Response response =
          await dio.get('http://localhost:8022/api/v1/rooms/AllRooms/1');
      if (response.statusCode == 200) {
        print("11111111");
        return response.data;
      } else {
        return false;
      }
    } catch (e) {
      print("2222222222");
      return "Error";
    }
  }
}
