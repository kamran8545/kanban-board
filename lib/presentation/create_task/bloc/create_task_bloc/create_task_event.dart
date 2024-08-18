import 'package:time_tracking_app/domain/entities/tasks/task_entity.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_task_event.freezed.dart';

@freezed
class CreateTaskBlocEvent with _$CreateTaskBlocEvent {
  const factory CreateTaskBlocEvent.createTask({required TaskEntity taskEntity}) = CreateTaskEvent;
}
