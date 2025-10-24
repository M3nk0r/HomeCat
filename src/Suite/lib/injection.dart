import 'package:get_it/get_it.dart';
import 'package:suite/data/db_context.dart';
import 'package:suite/ui/controllers/home/home_cubit.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Blocs and Cubits
  sl.registerFactory(() => HomeCubit());


  // Database
  sl.registerLazySingleton<DbContext>(() => DbContext());
}