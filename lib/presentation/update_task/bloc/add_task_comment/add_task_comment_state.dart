import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_task_comment_state.freezed.dart';

@freezed
class AddTaskCommentState with _$AddTaskCommentState {
  const factory AddTaskCommentState({
    @Default('') String taskId,
    @Default('') String comment,
    @Default(false) bool isSubmitting,
    @Default(false) bool isAdded,
    String? errorMessage,
  }) = _AddTaskCommentState;
}
