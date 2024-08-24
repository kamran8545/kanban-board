import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_task_comment_event.freezed.dart';

@freezed
class AddTaskCommentEvent with _$AddTaskCommentEvent{
  const factory AddTaskCommentEvent.initial() = AddTaskCommentInitialEvent;
  const factory AddTaskCommentEvent.commentChanged({required String comment}) = AddTaskCommentChangeEvent;
  const factory AddTaskCommentEvent.adding({required String taskId}) = AddTaskCommentAddEvent;
  const factory AddTaskCommentEvent.added() = AddTaskCommentAddedEvent;
  const factory AddTaskCommentEvent.error() = AddTaskCommentErrorEvent;
}