import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:suite/injection.dart';
import 'package:suite/ui/controllers/home/home_cubit.dart';
import 'package:suite/ui/controllers/home/home_state.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<HomeCubit>(),
      child: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            return Scaffold(
              appBar: AppBar(),
              body: Center(
                child: Text(state.text),
              ),
            );
          }
      ),
    );
  }
}
