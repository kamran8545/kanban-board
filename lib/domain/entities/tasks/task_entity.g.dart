// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskEntityImpl _$$TaskEntityImplFromJson(Map<String, dynamic> json) =>
    _$TaskEntityImpl(
      id: json['id'] as String,
      content: json['content'] as String,
      description: json['description'] as String,
      projectId: json['project_id'] as String,
      priority: (json['priority'] as num).toInt(),
      dueDateEntity: json['due'] == null
          ? null
          : TaskDueDateEntity.fromJson(json['due'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TaskEntityImplToJson(_$TaskEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'description': instance.description,
      'project_id': instance.projectId,
      'priority': instance.priority,
      'due': instance.dueDateEntity,
    };
