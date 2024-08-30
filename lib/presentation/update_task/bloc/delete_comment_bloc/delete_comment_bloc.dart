import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_tracking_app/domain/usecase/comments/delete_comment_usecase.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/delete_comment_bloc/delete_comment_bloc_event.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/delete_comment_bloc/delete_comment_bloc_state.dart';

import '../../../../domain/entities/result.dart';

class DeleteCommentBloc extends Bloc<DeleteCommentBlocEvent, DeleteCommentBlocState> {
  final DeleteCommentUseCase _deleteCommentUseCase;

  DeleteCommentBloc({required DeleteCommentUseCase deleteCommentUseCase})
      : _deleteCommentUseCase = deleteCommentUseCase,
        super(const DeleteCommentInitialState()) {
    on<DeleteCommentDeleteEvent>(_onDeleteCommentEvent);
  }

  void _onDeleteCommentEvent(DeleteCommentBlocEvent event, Emitter<DeleteCommentBlocState> emitter) async {
    emitter(DeleteCommentDeletingState(commentId: event.commentId));
    var result = await _deleteCommentUseCase.call(event.commentId);
    switch (result) {
      case Success(successRes: final _):
        emitter(DeleteCommentDeletedState(commentId: event.commentId));
        break;
      case Failure(failureRes: final error):
        emitter(DeleteCommentErrorState(message: error.message));
        break;
    }
  }
}
