import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_all_tasks_comments_event.freezed.dart';

@freezed
class GetAllTasksCommentsEvent with _$GetAllTasksCommentsEvent{
  const factory GetAllTasksCommentsEvent({required String taskId}) = _GetAllTasksCommentsEvent;
}