import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/get_all_task_comments/get_all_tasks_comments_event.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/get_all_task_comments/get_all_tasks_comments_state.dart';

import '../../../../domain/entities/result.dart';
import '../../../../domain/usecase/comments/get_all_comments_usecase.dart';

class GetAllTasksCommentsBloc extends Bloc<GetAllTasksCommentsEvent, GetAllTasksCommentsState> {
  final GetAllCommentsUseCase _getAllCommentsUseCase;

  GetAllTasksCommentsBloc({required GetAllCommentsUseCase getAllCommentsUseCase})
      : _getAllCommentsUseCase = getAllCommentsUseCase,
        super(const GetAllTasksCommentsInitialState()) {
    on<GetAllTasksCommentsEvent>(onGetAllTasksComments);
  }

  void onGetAllTasksComments(GetAllTasksCommentsEvent event, Emitter<GetAllTasksCommentsState> emitter) async {
    emitter(const GetAllTasksCommentsLoadingState());
    var result = await _getAllCommentsUseCase.call(event.taskId);
    switch (result) {
      case Success(successRes: final resposne):
        emitter(GetAllTasksCommentsLoadedState(comments: resposne));
        break;
      case Failure(failureRes: final error):
        emitter(GetAllTasksCommentsErrorState(message: error.message));
        break;
    }
  }
}
