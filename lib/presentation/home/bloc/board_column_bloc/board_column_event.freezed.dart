// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'board_column_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BoardColumnEvent {
  List<TaskEntity> get tasks => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TaskEntity> tasks) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TaskEntity> tasks)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TaskEntity> tasks)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BoardColumnUpdateEvent value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BoardColumnUpdateEvent value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BoardColumnUpdateEvent value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BoardColumnEventCopyWith<BoardColumnEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoardColumnEventCopyWith<$Res> {
  factory $BoardColumnEventCopyWith(
          BoardColumnEvent value, $Res Function(BoardColumnEvent) then) =
      _$BoardColumnEventCopyWithImpl<$Res, BoardColumnEvent>;
  @useResult
  $Res call({List<TaskEntity> tasks});
}

/// @nodoc
class _$BoardColumnEventCopyWithImpl<$Res, $Val extends BoardColumnEvent>
    implements $BoardColumnEventCopyWith<$Res> {
  _$BoardColumnEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
  }) {
    return _then(_value.copyWith(
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BoardColumnUpdateEventImplCopyWith<$Res>
    implements $BoardColumnEventCopyWith<$Res> {
  factory _$$BoardColumnUpdateEventImplCopyWith(
          _$BoardColumnUpdateEventImpl value,
          $Res Function(_$BoardColumnUpdateEventImpl) then) =
      __$$BoardColumnUpdateEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TaskEntity> tasks});
}

/// @nodoc
class __$$BoardColumnUpdateEventImplCopyWithImpl<$Res>
    extends _$BoardColumnEventCopyWithImpl<$Res, _$BoardColumnUpdateEventImpl>
    implements _$$BoardColumnUpdateEventImplCopyWith<$Res> {
  __$$BoardColumnUpdateEventImplCopyWithImpl(
      _$BoardColumnUpdateEventImpl _value,
      $Res Function(_$BoardColumnUpdateEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
  }) {
    return _then(_$BoardColumnUpdateEventImpl(
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskEntity>,
    ));
  }
}

/// @nodoc

class _$BoardColumnUpdateEventImpl implements BoardColumnUpdateEvent {
  const _$BoardColumnUpdateEventImpl({required final List<TaskEntity> tasks})
      : _tasks = tasks;

  final List<TaskEntity> _tasks;
  @override
  List<TaskEntity> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  String toString() {
    return 'BoardColumnEvent.update(tasks: $tasks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoardColumnUpdateEventImpl &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tasks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BoardColumnUpdateEventImplCopyWith<_$BoardColumnUpdateEventImpl>
      get copyWith => __$$BoardColumnUpdateEventImplCopyWithImpl<
          _$BoardColumnUpdateEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TaskEntity> tasks) update,
  }) {
    return update(tasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TaskEntity> tasks)? update,
  }) {
    return update?.call(tasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TaskEntity> tasks)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(tasks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BoardColumnUpdateEvent value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BoardColumnUpdateEvent value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BoardColumnUpdateEvent value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class BoardColumnUpdateEvent implements BoardColumnEvent {
  const factory BoardColumnUpdateEvent(
      {required final List<TaskEntity> tasks}) = _$BoardColumnUpdateEventImpl;

  @override
  List<TaskEntity> get tasks;
  @override
  @JsonKey(ignore: true)
  _$$BoardColumnUpdateEventImplCopyWith<_$BoardColumnUpdateEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
