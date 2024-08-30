import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:time_tracking_app/domain/entities/comments/comment_entity.dart';

part 'get_all_tasks_comments_state.freezed.dart';

@freezed
class GetAllTasksCommentsState with _$GetAllTasksCommentsState{
  const factory GetAllTasksCommentsState.initial() = GetAllTasksCommentsInitialState;
  const factory GetAllTasksCommentsState.loading() = GetAllTasksCommentsLoadingState;
  const factory GetAllTasksCommentsState.loaded({required List<CommentEntity> comments}) = GetAllTasksCommentsLoadedState;
  const factory GetAllTasksCommentsState.error({required String message}) = GetAllTasksCommentsErrorState;
}