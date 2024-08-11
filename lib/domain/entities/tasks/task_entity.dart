import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:time_tracking_app/domain/entities/tasks/task_due_date_entity.dart';

part 'task_entity.freezed.dart';
part 'task_entity.g.dart';


@freezed
class TaskEntity with _$TaskEntity {
  
  const factory TaskEntity({
    required String id,
    required String content,
    required String description,
    @JsonKey(name: 'project_id')
    required String projectId,
    required int priority,
    @JsonKey(name: 'due')
    required TaskDueDateEntity? dueDateEntity,
  }) = _TaskEntity;

  factory TaskEntity.fromJson(Map<String, dynamic> json) => _$TaskEntityFromJson(json);

}