import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:time_tracking_app/translations/locale_keys.g.dart';

part 'task_form_state.freezed.dart';

@freezed
class TaskFormState with _$TaskFormState {
  const factory TaskFormState({
    @Default('') String title,
    @Default('') String description,
    int? priority,
    @Default(LocaleKeys.back_log) String label,
    DateTime? dueDate,
    @Default(false) bool isValid,
    @Default(false) bool isSubmitting,
    @Default(false) bool isCreated,
  }) = _TaskFormState;
}
