import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../domain/entities/tasks/task_entity.dart';

part 'board_column_event.freezed.dart';

@freezed
class BoardColumnEvent with _$BoardColumnEvent {
  const factory BoardColumnEvent.update({required List<TaskEntity> tasks}) = BoardColumnUpdateEvent;
}
