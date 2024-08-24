import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_tracking_app/domain/entities/comments/comment_entity.dart';
import 'package:time_tracking_app/domain/usecase/comments/add_comments_usecase.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/add_task_comment/add_task_comment_event.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/add_task_comment/add_task_comment_state.dart';

import '../../../../domain/entities/result.dart';

class AddTaskCommentBloc extends Bloc<AddTaskCommentEvent, AddTaskCommentState> {
  final AddCommentsUseCase _addCommentsUseCase;

  AddTaskCommentBloc({required AddCommentsUseCase addCommentsUseCase})
      : _addCommentsUseCase = addCommentsUseCase,
        super(const AddTaskCommentState()) {
    on<AddTaskCommentAddEvent>(onAddTaskCommentAddEvent);
    on<AddTaskCommentChangeEvent>(onAddTaskCommentChangeEvent);
  }

  void onAddTaskCommentChangeEvent(AddTaskCommentChangeEvent event, Emitter<AddTaskCommentState> emitter) {
    emitter(state.copyWith(comment: event.comment, isAdded: false));
  }

  void onAddTaskCommentAddEvent(AddTaskCommentAddEvent event, Emitter<AddTaskCommentState> emitter) async{
    if(state.comment.isEmpty){
      return;
    }
    emitter(state.copyWith(isSubmitting: true, taskId: event.taskId));
    var result = await _addCommentsUseCase.call(CommentEntity(id: '', content: state.comment, taskId: state.taskId));
    switch (result) {
      case Success(successRes: final _):
        emitter(state.copyWith(isAdded: true, comment: '', isSubmitting: false));
        break;
      case Failure(failureRes: final error):
        emitter(state.copyWith(errorMessage: error.message, isSubmitting: false));
        break;
    }
  }
}
