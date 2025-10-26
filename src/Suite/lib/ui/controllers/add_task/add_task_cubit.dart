import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:suite/cross_cutting/entities/room.dart';
import 'package:suite/cross_cutting/entities/task.dart';
import 'package:suite/cross_cutting/enums/interval_typ.dart';
import 'package:suite/logic/services/interfaces/task_service.dart';
import 'package:suite/ui/controllers/add_task/add_task_state.dart';

class AddTaskCubit extends Cubit<AddTaskState> {
  final TaskService taskService;

  AddTaskCubit({required this.taskService})
      : super(
    AddTaskState(
      name: '',
      intervalTyp: IntervalTyp.days,
      interval: 1,
      duration: 5,
    ),
  );

  void init(final Room room) {
    state.room = room;

    emit(state.copyWith(room: room));
  }

  Future<void> add() async {
    final task = Task.create(userId: '',
        name: state.name,
        interval: state.interval,
        intervalTyp: state.intervalTyp.index,
        duration: state.duration,
        roomId: state.room.id,
        roomUserId: state.room.userId);

    await taskService.create(task);
  }

  void onChangeName(String value) => emit(state.copyWith(name: value));

  void onSelectedIntervalTyp(IntervalTyp? value) =>
      emit(state.copyWith(intervalTyp: value));

  void onChangeInterval(String value) =>
      emit(state.copyWith(interval: int.tryParse(value)));

  void onChangeDuration(String value) =>
      emit(state.copyWith(duration: int.tryParse(value)));
}
