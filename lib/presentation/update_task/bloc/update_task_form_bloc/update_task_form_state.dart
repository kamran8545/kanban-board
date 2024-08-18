import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_task_form_state.freezed.dart';

@freezed
class UpdateTaskFormState with _$UpdateTaskFormState {
  const factory UpdateTaskFormState({
    @Default('') String id,
    @Default('') String title,
    @Default('') String description,
    int? priority,
    @Default('') String label,
    DateTime? dueDate,
    @Default(false) bool isValid,
    @Default(false) bool isSubmitting,
    @Default(false) bool isSuccess,
    String? errorMessage,
  }) = _UpdateTaskFormState;
}
