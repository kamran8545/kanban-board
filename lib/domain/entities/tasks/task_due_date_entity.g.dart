// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_due_date_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskDueDateEntityImpl _$$TaskDueDateEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$TaskDueDateEntityImpl(
      date: json['date'] as String,
      description: json['string'] as String,
      lang: json['lang'] as String,
      isRecurring: json['is_recurring'] as bool,
      dateTime: json['datetime'] as String? ?? '',
    );

Map<String, dynamic> _$$TaskDueDateEntityImplToJson(
        _$TaskDueDateEntityImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'string': instance.description,
      'lang': instance.lang,
      'is_recurring': instance.isRecurring,
      'datetime': instance.dateTime,
    };
