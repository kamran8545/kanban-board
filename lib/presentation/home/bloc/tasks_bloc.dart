import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_tracking_app/domain/entities/result.dart';
import 'package:time_tracking_app/domain/usecase/tasks/create_tasks_usecase.dart';
import 'package:time_tracking_app/domain/usecase/tasks/update_task_usecase.dart';
import 'package:time_tracking_app/presentation/home/bloc/tasks_event.dart';
import 'package:time_tracking_app/presentation/home/bloc/tasks_state.dart';

import '../../../domain/usecase/tasks/delete_task_usecase.dart';
import '../../../domain/usecase/tasks/get_all_tasks_usecase.dart';

class TasksBloc extends Bloc<TasksEvent, TasksState> {
  final CreateTasksUseCase _createTasksUseCase;
  final GetAllTasksUseCase _getAllTasksUseCase;
  final UpdateTasksUseCase _updateTasksUseCase;
  final DeleteTaskUseCase _deleteTaskUseCase;

  TasksBloc({
    required CreateTasksUseCase createTasksUseCase,
    required GetAllTasksUseCase getAllTasksUseCase,
    required UpdateTasksUseCase updateTasksUseCase,
    required DeleteTaskUseCase deleteTaskUseCase,
  })  : _createTasksUseCase = createTasksUseCase,
        _getAllTasksUseCase = getAllTasksUseCase,
        _updateTasksUseCase = updateTasksUseCase,
        _deleteTaskUseCase = deleteTaskUseCase,
        super(const TasksInitialState()) {
    on<CreateTaskEvent>(onCreateTask);
    on<GetAllTasksEvent>(onGetAllTasks);
    on<UpdateTaskEvent>(onUpdateTask);
    on<DeleteTaskEvent>(onDeleteTask);
  }

  void onCreateTask(TasksEvent taskEvent, Emitter<TasksState> emitter) async {
    emitter(const TasksLoadingState());
    final result = await _createTasksUseCase.call(taskEvent.taskEntity!);
    switch (result) {
      case Success(successRes: final _):
        emitter(const TaskCreatedState());
        break;
      case Failure(failureRes: final error):
        emitter(TasksLoadingErrorState(error));
        break;
    }
  }

  void onGetAllTasks(GetAllTasksEvent getAllTasksEvent, Emitter<TasksState> emitter) async {
    emitter(const TasksLoadingState());
    final result = await _getAllTasksUseCase(0);
    switch (result) {
      case Success(successRes: final resposne):
        emitter(TasksLoadedState(tasks: resposne));
        break;
      case Failure(failureRes: final error):
        emitter(TasksLoadingErrorState(error));
        break;
    }
  }

  void onUpdateTask(UpdateTaskEvent updateTaskEvent, Emitter<TasksState> emitter) async {
    emitter(const TasksLoadingState());
    final result = await _updateTasksUseCase(updateTaskEvent.taskEntity!);
    switch (result) {
      case Success(successRes: final _):
        emitter(const TasksUpdatedState());
        break;
      case Failure(failureRes: final error):
        emitter(TasksLoadingErrorState(error));
        break;
    }
  }

  void onDeleteTask(DeleteTaskEvent deleteTaskEvent, Emitter<TasksState> emitter) async {
    emitter(const TasksLoadingState());
    final result = await _deleteTaskUseCase(deleteTaskEvent.taskEntity!.id);
    switch (result) {
      case Success(successRes: final _):
        emitter(const TasksDeletedState());
        break;
      case Failure(failureRes: final error):
        emitter(TasksLoadingErrorState(error));
        break;
    }
  }
}
