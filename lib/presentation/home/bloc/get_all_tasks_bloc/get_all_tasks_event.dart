import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_all_tasks_event.freezed.dart';

@freezed
class GetAllTasksBlocEvent with _$GetAllTasksBlocEvent {
  const factory GetAllTasksBlocEvent.getAllTasks({required String projectId}) = GetAllTasksEvent;
}
