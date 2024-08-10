import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_tracking_app/presentation/home/bloc/tasks_bloc.dart';
import 'package:time_tracking_app/presentation/home/bloc/tasks_state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
          ),
          BlocBuilder<TasksBloc, TasksState>(
            builder: (BuildContext context, state) {
              if (state is TasksInitialState) {
                return const Text('Initial State');
              } else if (state is TasksLoadingState) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is TasksLoadedState) {
                if (state.tasks != null && state.tasks!.isNotEmpty) {
                  return Column(
                    children: [for (var task in state.tasks!) Text(task.content)],
                  );
                }
                return const Text('Loaded State');
              } else if (state is TasksLoadingErrorState) {
                return const Text('Loading Error State');
              }
              return const Text('default');
            },
          ),
        ],
      ),
    );
  }
}
