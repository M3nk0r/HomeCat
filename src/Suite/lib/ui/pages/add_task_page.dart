import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:suite/cross_cutting/entities/room.dart';
import 'package:suite/cross_cutting/enums/interval_typ.dart';
import 'package:suite/injection.dart';
import 'package:suite/ui/controllers/add_task/add_task_cubit.dart';
import 'package:suite/ui/controllers/add_task/add_task_state.dart';

@RoutePage()
class AddTaskPage extends StatelessWidget {
  final Room room;

  const AddTaskPage({required this.room, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<AddTaskCubit>()..init(room),
      child: BlocBuilder<AddTaskCubit, AddTaskState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(title: Text('Add task')),
            body: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Name'),
                      onChanged: (value) =>
                          context.read<AddTaskCubit>().onChangeName(value),
                    ),
                    const SizedBox( height: 16,),
                    DropdownMenu<IntervalTyp>(
                      label: Text('Interval typ'),
                      initialSelection: state.intervalTyp,
                      onSelected: (value) => context.read<AddTaskCubit>().onSelectedIntervalTyp(value),
                      dropdownMenuEntries: [
                        DropdownMenuEntry<IntervalTyp>(value: IntervalTyp.days, label: 'days'),
                        DropdownMenuEntry<IntervalTyp>(value: IntervalTyp.weeks, label: 'weeks'),
                        DropdownMenuEntry<IntervalTyp>(value: IntervalTyp.month, label: 'month'),
                        DropdownMenuEntry<IntervalTyp>(value: IntervalTyp.years, label: 'years'),
                      ],
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Interval'),
                      initialValue: state.interval.toString(),
                      keyboardType: TextInputType.numberWithOptions(decimal: false),
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                            RegExp(r'^\d*'))
                      ],
                      onChanged: (value) =>
                          context.read<AddTaskCubit>().onChangeInterval(value),
                    ),
                    const SizedBox( height: 16,),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Duration in minutes'),
                      initialValue: state.duration.toString(),
                      keyboardType: TextInputType.numberWithOptions(decimal: false),
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                            RegExp(r'^\d*'))
                      ],
                      onChanged: (value) =>
                          context.read<AddTaskCubit>().onChangeDuration(value),
                    ),
                    const SizedBox( height: 16,),
                    ElevatedButton(
                      onPressed: () async {
                        await context.read<AddTaskCubit>().add();

                        if(context.mounted){
                          context.router.pop();
                        }
                      },
                      child: Text('Save'),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
