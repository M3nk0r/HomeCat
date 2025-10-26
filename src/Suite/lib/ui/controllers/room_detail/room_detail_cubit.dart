import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:suite/cross_cutting/entities/room.dart';
import 'package:suite/logic/services/interfaces/task_service.dart';
import 'package:suite/ui/controllers/room_detail/room_detail_state.dart';

class RoomDetailCubit extends Cubit<RoomDetailState> {
  final TaskService taskService;

  RoomDetailCubit({required this.taskService}) : super(RoomDetailState(tasks: []));

  Future<void> init(final Room room) async {
    state.room = room;
    final tasks = await taskService.readTaskWrapperByRoom(room.id, room.userId);

    emit(state.copyWith(room: room, tasks: tasks));
  }
}