// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_due_date_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TaskDueDateEntity _$TaskDueDateEntityFromJson(Map<String, dynamic> json) {
  return _TaskDueDateEntity.fromJson(json);
}

/// @nodoc
mixin _$TaskDueDateEntity {
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'string')
  String get description => throw _privateConstructorUsedError;
  String get lang => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_recurring')
  bool get isRecurring => throw _privateConstructorUsedError;
  @JsonKey(name: 'datetime', defaultValue: '')
  String get dateTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskDueDateEntityCopyWith<TaskDueDateEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskDueDateEntityCopyWith<$Res> {
  factory $TaskDueDateEntityCopyWith(
          TaskDueDateEntity value, $Res Function(TaskDueDateEntity) then) =
      _$TaskDueDateEntityCopyWithImpl<$Res, TaskDueDateEntity>;
  @useResult
  $Res call(
      {String date,
      @JsonKey(name: 'string') String description,
      String lang,
      @JsonKey(name: 'is_recurring') bool isRecurring,
      @JsonKey(name: 'datetime', defaultValue: '') String dateTime});
}

/// @nodoc
class _$TaskDueDateEntityCopyWithImpl<$Res, $Val extends TaskDueDateEntity>
    implements $TaskDueDateEntityCopyWith<$Res> {
  _$TaskDueDateEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? description = null,
    Object? lang = null,
    Object? isRecurring = null,
    Object? dateTime = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      lang: null == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String,
      isRecurring: null == isRecurring
          ? _value.isRecurring
          : isRecurring // ignore: cast_nullable_to_non_nullable
              as bool,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskDueDateEntityImplCopyWith<$Res>
    implements $TaskDueDateEntityCopyWith<$Res> {
  factory _$$TaskDueDateEntityImplCopyWith(_$TaskDueDateEntityImpl value,
          $Res Function(_$TaskDueDateEntityImpl) then) =
      __$$TaskDueDateEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String date,
      @JsonKey(name: 'string') String description,
      String lang,
      @JsonKey(name: 'is_recurring') bool isRecurring,
      @JsonKey(name: 'datetime', defaultValue: '') String dateTime});
}

/// @nodoc
class __$$TaskDueDateEntityImplCopyWithImpl<$Res>
    extends _$TaskDueDateEntityCopyWithImpl<$Res, _$TaskDueDateEntityImpl>
    implements _$$TaskDueDateEntityImplCopyWith<$Res> {
  __$$TaskDueDateEntityImplCopyWithImpl(_$TaskDueDateEntityImpl _value,
      $Res Function(_$TaskDueDateEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? description = null,
    Object? lang = null,
    Object? isRecurring = null,
    Object? dateTime = null,
  }) {
    return _then(_$TaskDueDateEntityImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      lang: null == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String,
      isRecurring: null == isRecurring
          ? _value.isRecurring
          : isRecurring // ignore: cast_nullable_to_non_nullable
              as bool,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskDueDateEntityImpl implements _TaskDueDateEntity {
  const _$TaskDueDateEntityImpl(
      {required this.date,
      @JsonKey(name: 'string') required this.description,
      required this.lang,
      @JsonKey(name: 'is_recurring') required this.isRecurring,
      @JsonKey(name: 'datetime', defaultValue: '') required this.dateTime});

  factory _$TaskDueDateEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskDueDateEntityImplFromJson(json);

  @override
  final String date;
  @override
  @JsonKey(name: 'string')
  final String description;
  @override
  final String lang;
  @override
  @JsonKey(name: 'is_recurring')
  final bool isRecurring;
  @override
  @JsonKey(name: 'datetime', defaultValue: '')
  final String dateTime;

  @override
  String toString() {
    return 'TaskDueDateEntity(date: $date, description: $description, lang: $lang, isRecurring: $isRecurring, dateTime: $dateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskDueDateEntityImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.lang, lang) || other.lang == lang) &&
            (identical(other.isRecurring, isRecurring) ||
                other.isRecurring == isRecurring) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, date, description, lang, isRecurring, dateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskDueDateEntityImplCopyWith<_$TaskDueDateEntityImpl> get copyWith =>
      __$$TaskDueDateEntityImplCopyWithImpl<_$TaskDueDateEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskDueDateEntityImplToJson(
      this,
    );
  }
}

abstract class _TaskDueDateEntity implements TaskDueDateEntity {
  const factory _TaskDueDateEntity(
      {required final String date,
      @JsonKey(name: 'string') required final String description,
      required final String lang,
      @JsonKey(name: 'is_recurring') required final bool isRecurring,
      @JsonKey(name: 'datetime', defaultValue: '')
      required final String dateTime}) = _$TaskDueDateEntityImpl;

  factory _TaskDueDateEntity.fromJson(Map<String, dynamic> json) =
      _$TaskDueDateEntityImpl.fromJson;

  @override
  String get date;
  @override
  @JsonKey(name: 'string')
  String get description;
  @override
  String get lang;
  @override
  @JsonKey(name: 'is_recurring')
  bool get isRecurring;
  @override
  @JsonKey(name: 'datetime', defaultValue: '')
  String get dateTime;
  @override
  @JsonKey(ignore: true)
  _$$TaskDueDateEntityImplCopyWith<_$TaskDueDateEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
