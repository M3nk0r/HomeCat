import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:suite/ui/controllers/home/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState(text: 'Hello world form state!'));

}