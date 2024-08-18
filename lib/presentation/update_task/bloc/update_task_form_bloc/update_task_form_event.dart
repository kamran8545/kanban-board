import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/entities/tasks/task_entity.dart';

part 'update_task_form_event.freezed.dart';

@freezed
class UpdateTaskFormEvent with _$UpdateTaskFormEvent {
  const factory UpdateTaskFormEvent.initial({required TaskEntity taskEntity}) = UpdateTaskFormInitialEvent;

  const factory UpdateTaskFormEvent.titleChanged(String title) = TitleChanged;

  const factory UpdateTaskFormEvent.descriptionChanged(String description) = DescriptionChanged;

  const factory UpdateTaskFormEvent.priorityChanged(int priority) = PriorityChanged;

  const factory UpdateTaskFormEvent.labelChanged(String label) = LabelChanged;

  const factory UpdateTaskFormEvent.dueDateChanged(DateTime dueDate) = DueDateChanged;

  const factory UpdateTaskFormEvent.submit() = SubmitTaskForm;
}
