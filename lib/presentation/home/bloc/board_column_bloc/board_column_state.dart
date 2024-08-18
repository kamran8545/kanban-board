import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../domain/entities/tasks/task_entity.dart';

part 'board_column_state.freezed.dart';

@freezed
class BoardColumnState with _$BoardColumnState {
  const factory BoardColumnState.initial() = BoardColumnInitialState;

  const factory BoardColumnState.update({required List<TaskEntity> tasks}) = BoardColumnUpdateState;
}
