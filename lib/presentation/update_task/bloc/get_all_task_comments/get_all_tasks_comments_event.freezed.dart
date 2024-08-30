// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_all_tasks_comments_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetAllTasksCommentsEvent {
  String get taskId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetAllTasksCommentsEventCopyWith<GetAllTasksCommentsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllTasksCommentsEventCopyWith<$Res> {
  factory $GetAllTasksCommentsEventCopyWith(GetAllTasksCommentsEvent value,
          $Res Function(GetAllTasksCommentsEvent) then) =
      _$GetAllTasksCommentsEventCopyWithImpl<$Res, GetAllTasksCommentsEvent>;
  @useResult
  $Res call({String taskId});
}

/// @nodoc
class _$GetAllTasksCommentsEventCopyWithImpl<$Res,
        $Val extends GetAllTasksCommentsEvent>
    implements $GetAllTasksCommentsEventCopyWith<$Res> {
  _$GetAllTasksCommentsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
  }) {
    return _then(_value.copyWith(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAllTasksCommentsEventImplCopyWith<$Res>
    implements $GetAllTasksCommentsEventCopyWith<$Res> {
  factory _$$GetAllTasksCommentsEventImplCopyWith(
          _$GetAllTasksCommentsEventImpl value,
          $Res Function(_$GetAllTasksCommentsEventImpl) then) =
      __$$GetAllTasksCommentsEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String taskId});
}

/// @nodoc
class __$$GetAllTasksCommentsEventImplCopyWithImpl<$Res>
    extends _$GetAllTasksCommentsEventCopyWithImpl<$Res,
        _$GetAllTasksCommentsEventImpl>
    implements _$$GetAllTasksCommentsEventImplCopyWith<$Res> {
  __$$GetAllTasksCommentsEventImplCopyWithImpl(
      _$GetAllTasksCommentsEventImpl _value,
      $Res Function(_$GetAllTasksCommentsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
  }) {
    return _then(_$GetAllTasksCommentsEventImpl(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetAllTasksCommentsEventImpl implements _GetAllTasksCommentsEvent {
  const _$GetAllTasksCommentsEventImpl({required this.taskId});

  @override
  final String taskId;

  @override
  String toString() {
    return 'GetAllTasksCommentsEvent(taskId: $taskId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllTasksCommentsEventImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllTasksCommentsEventImplCopyWith<_$GetAllTasksCommentsEventImpl>
      get copyWith => __$$GetAllTasksCommentsEventImplCopyWithImpl<
          _$GetAllTasksCommentsEventImpl>(this, _$identity);
}

abstract class _GetAllTasksCommentsEvent implements GetAllTasksCommentsEvent {
  const factory _GetAllTasksCommentsEvent({required final String taskId}) =
      _$GetAllTasksCommentsEventImpl;

  @override
  String get taskId;
  @override
  @JsonKey(ignore: true)
  _$$GetAllTasksCommentsEventImplCopyWith<_$GetAllTasksCommentsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
