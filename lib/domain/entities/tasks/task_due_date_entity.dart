import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_due_date_entity.freezed.dart';
part 'task_due_date_entity.g.dart';

@freezed
class TaskDueDateEntity with _$TaskDueDateEntity {

  const factory TaskDueDateEntity({
    required String date,
    @JsonKey(name: 'string') required String description,
    required String lang,
    @JsonKey(name: 'is_recurring') required bool isRecurring,
    @JsonKey(name: 'datetime', defaultValue: '')
    required String dateTime
  }) = _TaskDueDateEntity;

  factory TaskDueDateEntity.fromJson(Map<String, dynamic> json) => _$TaskDueDateEntityFromJson(json);

}