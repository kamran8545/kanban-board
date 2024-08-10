import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_tracking_app/presentation/home/bloc/tasks_bloc.dart';
import 'package:time_tracking_app/presentation/home/bloc/tasks_event.dart';
import 'package:time_tracking_app/presentation/home/home_screen.dart';

import 'app_ bloc_observer.dart';
import 'core/dependency_injection.dart';

Future<void> main() async {
  Bloc.observer = AppBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<TasksBloc>(
          create: (_) => sl<TasksBloc>()
            ..add(
              GetAllTasksEvent(),
            ),
        ),
      ],
      child: MaterialApp(
        title: 'Time Tracking App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}