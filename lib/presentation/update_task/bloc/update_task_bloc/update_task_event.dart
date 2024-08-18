import 'package:time_tracking_app/domain/entities/tasks/task_entity.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_task_event.freezed.dart';

@freezed
class UpdateTaskBlocEvent with _$UpdateTaskBlocEvent {
  const factory UpdateTaskBlocEvent.update({required TaskEntity taskEntity}) = UpdateTaskEvent;
}
