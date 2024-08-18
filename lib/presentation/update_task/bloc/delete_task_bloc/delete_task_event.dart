import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_task_event.freezed.dart';

@freezed
class DeleteTaskBlocEvent with _$DeleteTaskBlocEvent {
  const factory DeleteTaskBlocEvent.delete({required String taskId}) = DeleteTaskDeleteEvent;
}
