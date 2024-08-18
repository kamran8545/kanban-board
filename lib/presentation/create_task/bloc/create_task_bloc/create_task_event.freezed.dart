// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_task_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateTaskBlocEvent {
  TaskEntity get taskEntity => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskEntity taskEntity) createTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskEntity taskEntity)? createTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskEntity taskEntity)? createTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateTaskEvent value) createTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateTaskEvent value)? createTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateTaskEvent value)? createTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateTaskBlocEventCopyWith<CreateTaskBlocEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTaskBlocEventCopyWith<$Res> {
  factory $CreateTaskBlocEventCopyWith(
          CreateTaskBlocEvent value, $Res Function(CreateTaskBlocEvent) then) =
      _$CreateTaskBlocEventCopyWithImpl<$Res, CreateTaskBlocEvent>;
  @useResult
  $Res call({TaskEntity taskEntity});

  $TaskEntityCopyWith<$Res> get taskEntity;
}

/// @nodoc
class _$CreateTaskBlocEventCopyWithImpl<$Res, $Val extends CreateTaskBlocEvent>
    implements $CreateTaskBlocEventCopyWith<$Res> {
  _$CreateTaskBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskEntity = null,
  }) {
    return _then(_value.copyWith(
      taskEntity: null == taskEntity
          ? _value.taskEntity
          : taskEntity // ignore: cast_nullable_to_non_nullable
              as TaskEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskEntityCopyWith<$Res> get taskEntity {
    return $TaskEntityCopyWith<$Res>(_value.taskEntity, (value) {
      return _then(_value.copyWith(taskEntity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateTaskEventImplCopyWith<$Res>
    implements $CreateTaskBlocEventCopyWith<$Res> {
  factory _$$CreateTaskEventImplCopyWith(_$CreateTaskEventImpl value,
          $Res Function(_$CreateTaskEventImpl) then) =
      __$$CreateTaskEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TaskEntity taskEntity});

  @override
  $TaskEntityCopyWith<$Res> get taskEntity;
}

/// @nodoc
class __$$CreateTaskEventImplCopyWithImpl<$Res>
    extends _$CreateTaskBlocEventCopyWithImpl<$Res, _$CreateTaskEventImpl>
    implements _$$CreateTaskEventImplCopyWith<$Res> {
  __$$CreateTaskEventImplCopyWithImpl(
      _$CreateTaskEventImpl _value, $Res Function(_$CreateTaskEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskEntity = null,
  }) {
    return _then(_$CreateTaskEventImpl(
      taskEntity: null == taskEntity
          ? _value.taskEntity
          : taskEntity // ignore: cast_nullable_to_non_nullable
              as TaskEntity,
    ));
  }
}

/// @nodoc

class _$CreateTaskEventImpl implements CreateTaskEvent {
  const _$CreateTaskEventImpl({required this.taskEntity});

  @override
  final TaskEntity taskEntity;

  @override
  String toString() {
    return 'CreateTaskBlocEvent.createTask(taskEntity: $taskEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTaskEventImpl &&
            (identical(other.taskEntity, taskEntity) ||
                other.taskEntity == taskEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTaskEventImplCopyWith<_$CreateTaskEventImpl> get copyWith =>
      __$$CreateTaskEventImplCopyWithImpl<_$CreateTaskEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskEntity taskEntity) createTask,
  }) {
    return createTask(taskEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskEntity taskEntity)? createTask,
  }) {
    return createTask?.call(taskEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskEntity taskEntity)? createTask,
    required TResult orElse(),
  }) {
    if (createTask != null) {
      return createTask(taskEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateTaskEvent value) createTask,
  }) {
    return createTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateTaskEvent value)? createTask,
  }) {
    return createTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateTaskEvent value)? createTask,
    required TResult orElse(),
  }) {
    if (createTask != null) {
      return createTask(this);
    }
    return orElse();
  }
}

abstract class CreateTaskEvent implements CreateTaskBlocEvent {
  const factory CreateTaskEvent({required final TaskEntity taskEntity}) =
      _$CreateTaskEventImpl;

  @override
  TaskEntity get taskEntity;
  @override
  @JsonKey(ignore: true)
  _$$CreateTaskEventImplCopyWith<_$CreateTaskEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
