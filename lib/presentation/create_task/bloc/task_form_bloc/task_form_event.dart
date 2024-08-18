import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_form_event.freezed.dart';

@freezed
class TaskFormEvent with _$TaskFormEvent {
  const factory TaskFormEvent.titleChanged(String title) = TitleChanged;

  const factory TaskFormEvent.descriptionChanged(String description) = DescriptionChanged;

  const factory TaskFormEvent.priorityChanged(int priority) = PriorityChanged;

  const factory TaskFormEvent.labelChanged(String label) = LabelChanged;

  const factory TaskFormEvent.dueDateChanged(DateTime dueDate) = DueDateChanged;

  const factory TaskFormEvent.submitTaskForm() = SubmitTaskForm;

  const factory TaskFormEvent.created() = TaskFormTaskCreated;
}
