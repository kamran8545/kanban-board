// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'board_column_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BoardColumnState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<TaskEntity> tasks) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<TaskEntity> tasks)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TaskEntity> tasks)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BoardColumnInitialState value) initial,
    required TResult Function(BoardColumnUpdateState value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BoardColumnInitialState value)? initial,
    TResult? Function(BoardColumnUpdateState value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BoardColumnInitialState value)? initial,
    TResult Function(BoardColumnUpdateState value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoardColumnStateCopyWith<$Res> {
  factory $BoardColumnStateCopyWith(
          BoardColumnState value, $Res Function(BoardColumnState) then) =
      _$BoardColumnStateCopyWithImpl<$Res, BoardColumnState>;
}

/// @nodoc
class _$BoardColumnStateCopyWithImpl<$Res, $Val extends BoardColumnState>
    implements $BoardColumnStateCopyWith<$Res> {
  _$BoardColumnStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BoardColumnInitialStateImplCopyWith<$Res> {
  factory _$$BoardColumnInitialStateImplCopyWith(
          _$BoardColumnInitialStateImpl value,
          $Res Function(_$BoardColumnInitialStateImpl) then) =
      __$$BoardColumnInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BoardColumnInitialStateImplCopyWithImpl<$Res>
    extends _$BoardColumnStateCopyWithImpl<$Res, _$BoardColumnInitialStateImpl>
    implements _$$BoardColumnInitialStateImplCopyWith<$Res> {
  __$$BoardColumnInitialStateImplCopyWithImpl(
      _$BoardColumnInitialStateImpl _value,
      $Res Function(_$BoardColumnInitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BoardColumnInitialStateImpl implements BoardColumnInitialState {
  const _$BoardColumnInitialStateImpl();

  @override
  String toString() {
    return 'BoardColumnState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoardColumnInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<TaskEntity> tasks) update,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<TaskEntity> tasks)? update,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TaskEntity> tasks)? update,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BoardColumnInitialState value) initial,
    required TResult Function(BoardColumnUpdateState value) update,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BoardColumnInitialState value)? initial,
    TResult? Function(BoardColumnUpdateState value)? update,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BoardColumnInitialState value)? initial,
    TResult Function(BoardColumnUpdateState value)? update,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class BoardColumnInitialState implements BoardColumnState {
  const factory BoardColumnInitialState() = _$BoardColumnInitialStateImpl;
}

/// @nodoc
abstract class _$$BoardColumnUpdateStateImplCopyWith<$Res> {
  factory _$$BoardColumnUpdateStateImplCopyWith(
          _$BoardColumnUpdateStateImpl value,
          $Res Function(_$BoardColumnUpdateStateImpl) then) =
      __$$BoardColumnUpdateStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TaskEntity> tasks});
}

/// @nodoc
class __$$BoardColumnUpdateStateImplCopyWithImpl<$Res>
    extends _$BoardColumnStateCopyWithImpl<$Res, _$BoardColumnUpdateStateImpl>
    implements _$$BoardColumnUpdateStateImplCopyWith<$Res> {
  __$$BoardColumnUpdateStateImplCopyWithImpl(
      _$BoardColumnUpdateStateImpl _value,
      $Res Function(_$BoardColumnUpdateStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
  }) {
    return _then(_$BoardColumnUpdateStateImpl(
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskEntity>,
    ));
  }
}

/// @nodoc

class _$BoardColumnUpdateStateImpl implements BoardColumnUpdateState {
  const _$BoardColumnUpdateStateImpl({required final List<TaskEntity> tasks})
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
    return 'BoardColumnState.update(tasks: $tasks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoardColumnUpdateStateImpl &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tasks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BoardColumnUpdateStateImplCopyWith<_$BoardColumnUpdateStateImpl>
      get copyWith => __$$BoardColumnUpdateStateImplCopyWithImpl<
          _$BoardColumnUpdateStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<TaskEntity> tasks) update,
  }) {
    return update(tasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<TaskEntity> tasks)? update,
  }) {
    return update?.call(tasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
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
    required TResult Function(BoardColumnInitialState value) initial,
    required TResult Function(BoardColumnUpdateState value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BoardColumnInitialState value)? initial,
    TResult? Function(BoardColumnUpdateState value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BoardColumnInitialState value)? initial,
    TResult Function(BoardColumnUpdateState value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class BoardColumnUpdateState implements BoardColumnState {
  const factory BoardColumnUpdateState(
      {required final List<TaskEntity> tasks}) = _$BoardColumnUpdateStateImpl;

  List<TaskEntity> get tasks;
  @JsonKey(ignore: true)
  _$$BoardColumnUpdateStateImplCopyWith<_$BoardColumnUpdateStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
