import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/update_task_bloc/update_task_event.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/update_task_bloc/update_task_state.dart';

import '../../../../../domain/entities/result.dart';
import '../../../../../domain/usecase/tasks/update_task_usecase.dart';

class UpdateTaskBloc extends Bloc<UpdateTaskBlocEvent, UpdateTaskBlocState> {
  final UpdateTasksUseCase _updateTasksUseCase;

  UpdateTaskBloc({
    required UpdateTasksUseCase updateTasksUseCase,
  })  : _updateTasksUseCase = updateTasksUseCase,
        super(const UpdateTaskInitialState()) {
    on<UpdateTaskEvent>(onUpdateTask);
  }

  void onUpdateTask(UpdateTaskBlocEvent updateTaskBlocEvent, Emitter<UpdateTaskBlocState> emitter) async {
    emitter(const UpdateTaskLoadingState());
    final result = await _updateTasksUseCase(updateTaskBlocEvent.taskEntity);
    switch (result) {
      case Success(successRes: final _):
        emitter(const UpdateTaskUpdatedState());
        break;
      case Failure(failureRes: final error):
        emitter(UpdateTaskErrorState(failure: error));
        break;
    }
  }
}
