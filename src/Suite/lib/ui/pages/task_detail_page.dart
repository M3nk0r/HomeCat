import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:suite/cross_cutting/entities/task.dart';
import 'package:suite/injection.dart';
import 'package:suite/ui/controllers/task_detail/task_detail_cubit.dart';
import 'package:suite/ui/controllers/task_detail/task_detail_state.dart';
import 'package:suite/ui/widgets/task_form.dart';

@RoutePage()
class TaskDetailPage extends StatelessWidget {
  final Task task;
  const TaskDetailPage({required this.task, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<TaskDetailCubit>()..init(task),
      child: BlocBuilder<TaskDetailCubit, TaskDetailState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(title: Text(state.taskWrapper.task.name)),
            body: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TaskForm(task: state.taskWrapper.task, isUpdate: true,),
                  ],
                )
              ),
            ),
          );
        },
      ),
    );
  }
}
