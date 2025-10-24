import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:suite/cross_cutting/entities/room.dart';
import 'package:suite/logic/services/interfaces/room_service.dart';
import 'package:suite/ui/controllers/room_overview/room_overview_state.dart';

class RoomOverviewCubit extends Cubit<RoomOverviewState> {
  final RoomService roomService;

  RoomOverviewCubit({required this.roomService}) : super(RoomOverviewState(rooms: []));

  Future<void> init() async {
    final rooms = await roomService.read();

    emit(state.copyWith(rooms: rooms));
  }

  Future<void> addRoom(String name) async {
    await roomService.create(Room.create(userId: '', name: name));

    final rooms = await roomService.read();
    emit(state.copyWith(rooms: rooms));
  }

}