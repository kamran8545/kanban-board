import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../domain/entities/result.dart';
import '../../../../../domain/usecase/tasks/delete_task_usecase.dart';
import 'delete_task_event.dart';
import 'delete_task_state.dart';

class DeleteTaskBloc extends Bloc<DeleteTaskBlocEvent, DeleteTaskBlocState> {
  final DeleteTaskUseCase _deleteTaskUseCase;

  DeleteTaskBloc({
    required DeleteTaskUseCase deleteTaskUseCase,
  })  : _deleteTaskUseCase = deleteTaskUseCase,
        super(const DeleteTaskInitialState()) {
    on<DeleteTaskDeleteEvent>(onDeleteTask);
  }

  void onDeleteTask(DeleteTaskBlocEvent deleteTaskEvent, Emitter<DeleteTaskBlocState> emitter) async {
    emitter(const DeleteTaskLoadingState());
    final result = await _deleteTaskUseCase(deleteTaskEvent.taskId);
    switch (result) {
      case Success(successRes: final _):
        emitter(const DeleteTaskDeletedState());
        break;
      case Failure(failureRes: final error):
        emitter(DeleteTaskErrorState(failure: error));
        break;
    }
  }
}
