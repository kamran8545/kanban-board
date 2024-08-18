import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../domain/entities/result.dart';
import '../../../../../domain/usecase/tasks/get_all_tasks_usecase.dart';
import 'get_all_tasks_event.dart';
import 'get_all_tasks_state.dart';

class GetAllTasksBloc extends Bloc<GetAllTasksBlocEvent, GetAllTasksBlocState> {
  final GetAllTasksUseCase _getAllTasksUseCase;

  GetAllTasksBloc({
    required GetAllTasksUseCase getAllTasksUseCase,
  })  : _getAllTasksUseCase = getAllTasksUseCase,
        super(const GetAllTasksInitialState()) {
    on<GetAllTasksEvent>(onGetAllTasks);
  }

  void onGetAllTasks(GetAllTasksBlocEvent getAllTasksBlocEvent, Emitter<GetAllTasksBlocState> emitter) async {
    emitter(const GetAllTasksLoadingState());
    final result = await _getAllTasksUseCase(getAllTasksBlocEvent.projectId);
    switch (result) {
      case Success(successRes: final resposne):
        emitter(GetAllTasksLoadedState(tasks: resposne));
        break;
      case Failure(failureRes: final error):
        emitter(GetAllTasksErrorState(failure: error));
        break;
    }
  }
}
