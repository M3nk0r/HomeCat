import 'package:flutter/material.dart';
import 'package:suite/data/db_context.dart';
import 'package:suite/ui/router.dart';
import 'package:suite/ui/theme.dart';
import 'injection.dart' as injection;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await injection.init();

  DbContext dbContext = injection.sl<DbContext>();
  await dbContext.init();

  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Suite',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.themeData(false),
      darkTheme: AppTheme.themeData(true),
      themeMode: ThemeMode.system,
      routerConfig: _appRouter.config(),
    );
  }

}
