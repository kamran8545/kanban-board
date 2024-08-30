import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_comment_bloc_event.freezed.dart';

@freezed
class DeleteCommentBlocEvent with _$DeleteCommentBlocEvent{
  const factory DeleteCommentBlocEvent.delete({required String commentId}) = DeleteCommentDeleteEvent;
}