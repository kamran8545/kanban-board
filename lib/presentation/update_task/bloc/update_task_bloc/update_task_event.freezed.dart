// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_task_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateTaskBlocEvent {
  TaskEntity get taskEntity => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskEntity taskEntity) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskEntity taskEntity)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskEntity taskEntity)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateTaskEvent value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateTaskEvent value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateTaskEvent value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateTaskBlocEventCopyWith<UpdateTaskBlocEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateTaskBlocEventCopyWith<$Res> {
  factory $UpdateTaskBlocEventCopyWith(
          UpdateTaskBlocEvent value, $Res Function(UpdateTaskBlocEvent) then) =
      _$UpdateTaskBlocEventCopyWithImpl<$Res, UpdateTaskBlocEvent>;
  @useResult
  $Res call({TaskEntity taskEntity});

  $TaskEntityCopyWith<$Res> get taskEntity;
}

/// @nodoc
class _$UpdateTaskBlocEventCopyWithImpl<$Res, $Val extends UpdateTaskBlocEvent>
    implements $UpdateTaskBlocEventCopyWith<$Res> {
  _$UpdateTaskBlocEventCopyWithImpl(this._value, this._then);

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
abstract class _$$UpdateTaskEventImplCopyWith<$Res>
    implements $UpdateTaskBlocEventCopyWith<$Res> {
  factory _$$UpdateTaskEventImplCopyWith(_$UpdateTaskEventImpl value,
          $Res Function(_$UpdateTaskEventImpl) then) =
      __$$UpdateTaskEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TaskEntity taskEntity});

  @override
  $TaskEntityCopyWith<$Res> get taskEntity;
}

/// @nodoc
class __$$UpdateTaskEventImplCopyWithImpl<$Res>
    extends _$UpdateTaskBlocEventCopyWithImpl<$Res, _$UpdateTaskEventImpl>
    implements _$$UpdateTaskEventImplCopyWith<$Res> {
  __$$UpdateTaskEventImplCopyWithImpl(
      _$UpdateTaskEventImpl _value, $Res Function(_$UpdateTaskEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskEntity = null,
  }) {
    return _then(_$UpdateTaskEventImpl(
      taskEntity: null == taskEntity
          ? _value.taskEntity
          : taskEntity // ignore: cast_nullable_to_non_nullable
              as TaskEntity,
    ));
  }
}

/// @nodoc

class _$UpdateTaskEventImpl implements UpdateTaskEvent {
  const _$UpdateTaskEventImpl({required this.taskEntity});

  @override
  final TaskEntity taskEntity;

  @override
  String toString() {
    return 'UpdateTaskBlocEvent.update(taskEntity: $taskEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTaskEventImpl &&
            (identical(other.taskEntity, taskEntity) ||
                other.taskEntity == taskEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTaskEventImplCopyWith<_$UpdateTaskEventImpl> get copyWith =>
      __$$UpdateTaskEventImplCopyWithImpl<_$UpdateTaskEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskEntity taskEntity) update,
  }) {
    return update(taskEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskEntity taskEntity)? update,
  }) {
    return update?.call(taskEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskEntity taskEntity)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(taskEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateTaskEvent value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateTaskEvent value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateTaskEvent value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class UpdateTaskEvent implements UpdateTaskBlocEvent {
  const factory UpdateTaskEvent({required final TaskEntity taskEntity}) =
      _$UpdateTaskEventImpl;

  @override
  TaskEntity get taskEntity;
  @override
  @JsonKey(ignore: true)
  _$$UpdateTaskEventImplCopyWith<_$UpdateTaskEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
