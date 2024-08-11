import 'package:time_tracking_app/domain/entities/custom_failures.dart';
import 'package:time_tracking_app/domain/entities/tasks/task_entity.dart';

abstract class TasksState {
  final List<TaskEntity>? tasks;
  final CustomFailure? failure;

  const TasksState({this.tasks, this.failure});
}

class TasksInitialState extends TasksState {
  const TasksInitialState();
}

class TaskCreatedState extends TasksState {
  const TaskCreatedState();
}

class TasksLoadingState extends TasksState {
  const TasksLoadingState();
}

class TasksLoadedState extends TasksState {
  const TasksLoadedState({required List<TaskEntity> tasks}) : super(tasks: tasks);
}

class TasksUpdatedState extends TasksState {
  const TasksUpdatedState();
}

class TasksDeletedState extends TasksState {
  const TasksDeletedState();
}

class TasksLoadingErrorState extends TasksState {
  const TasksLoadingErrorState(CustomFailure failure) : super(failure: failure);
}
