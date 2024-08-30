import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_comment_bloc_state.freezed.dart';

@freezed
class DeleteCommentBlocState with _$DeleteCommentBlocState{
  const factory DeleteCommentBlocState.initial() = DeleteCommentInitialState;
  const factory DeleteCommentBlocState.deleting({required String commentId}) = DeleteCommentDeletingState;
  const factory DeleteCommentBlocState.deleted({required String commentId}) = DeleteCommentDeletedState;
  const factory DeleteCommentBlocState.error({required String message}) = DeleteCommentErrorState;
}