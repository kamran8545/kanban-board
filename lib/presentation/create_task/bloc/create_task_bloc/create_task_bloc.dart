import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_tracking_app/domain/entities/result.dart';
import 'package:time_tracking_app/domain/usecase/tasks/create_tasks_usecase.dart';
import 'package:time_tracking_app/presentation/create_task/bloc/create_task_bloc/create_task_event.dart';
import 'package:time_tracking_app/presentation/create_task/bloc/create_task_bloc/create_task_state.dart';
import 'package:time_tracking_app/presentation/create_task/bloc/task_form_bloc/task_form_bloc.dart';
import 'package:time_tracking_app/utils/constants.dart';

import '../../../../core/dependency_injection.dart';
import '../../../home/bloc/get_all_tasks_bloc/get_all_tasks_bloc.dart';
import '../../../home/bloc/get_all_tasks_bloc/get_all_tasks_event.dart';
import '../task_form_bloc/task_form_event.dart';

class CreateTaskBloc extends Bloc<CreateTaskBlocEvent, CreateTasksBlocState> {
  final CreateTasksUseCase _createTasksUseCase;

  CreateTaskBloc({
    required CreateTasksUseCase createTasksUseCase,
  })  : _createTasksUseCase = createTasksUseCase,
        super(const CreateTaskInitialState()) {
    on<CreateTaskEvent>(onCreateTask);
  }

  void onCreateTask(CreateTaskBlocEvent taskEvent, Emitter<CreateTasksBlocState> emitter) async {
    emitter(const CreateTaskLoadingState());
    final result = await _createTasksUseCase.call(taskEvent.taskEntity);
    switch (result) {
      case Success(successRes: final _):
        emitter(const CreateTaskCreatedState());
        sl<TaskFormBloc>().add(const TaskFormTaskCreated());
        sl<GetAllTasksBloc>().add(const GetAllTasksEvent(projectId: AppConstants.kProjectId));
        break;
      case Failure(failureRes: final error):
        emitter(CreateTaskErrorState(failure: error));
        break;
    }
  }
}
