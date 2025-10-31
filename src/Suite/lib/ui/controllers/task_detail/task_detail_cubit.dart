import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:suite/cross_cutting/entities/task.dart';
import 'package:suite/cross_cutting/wrapper/task_wrapper.dart';
import 'package:suite/logic/services/interfaces/task_service.dart';
import 'package:suite/ui/controllers/task_detail/task_detail_state.dart';

class TaskDetailCubit extends Cubit<TaskDetailState> {
  final TaskService taskService;

  TaskDetailCubit({required this.taskService}) : super(TaskDetailState());

  Future<void> init(Task task) async {
    state.taskWrapper = TaskWrapper(task: task, completedTasks: []);
    final wrapper = await taskService.readTaskWrapperById(task.id, task.userId);

    emit(state.copyWith(taskWrapper: wrapper));
  }
}