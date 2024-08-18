// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentEntityImpl _$$CommentEntityImplFromJson(Map<String, dynamic> json) =>
    _$CommentEntityImpl(
      id: json['id'] as String,
      content: json['content'] as String,
      taskId: json['task_id'] as String,
    );

Map<String, dynamic> _$$CommentEntityImplToJson(_$CommentEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'task_id': instance.taskId,
    };
