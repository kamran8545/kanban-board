// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_task_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateTaskBlocState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskEntity? taskEntity) initial,
    required TResult Function() loading,
    required TResult Function() updated,
    required TResult Function(CustomFailure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskEntity? taskEntity)? initial,
    TResult? Function()? loading,
    TResult? Function()? updated,
    TResult? Function(CustomFailure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskEntity? taskEntity)? initial,
    TResult Function()? loading,
    TResult Function()? updated,
    TResult Function(CustomFailure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateTaskInitialState value) initial,
    required TResult Function(UpdateTaskLoadingState value) loading,
    required TResult Function(UpdateTaskUpdatedState value) updated,
    required TResult Function(UpdateTaskErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateTaskInitialState value)? initial,
    TResult? Function(UpdateTaskLoadingState value)? loading,
    TResult? Function(UpdateTaskUpdatedState value)? updated,
    TResult? Function(UpdateTaskErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateTaskInitialState value)? initial,
    TResult Function(UpdateTaskLoadingState value)? loading,
    TResult Function(UpdateTaskUpdatedState value)? updated,
    TResult Function(UpdateTaskErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateTaskBlocStateCopyWith<$Res> {
  factory $UpdateTaskBlocStateCopyWith(
          UpdateTaskBlocState value, $Res Function(UpdateTaskBlocState) then) =
      _$UpdateTaskBlocStateCopyWithImpl<$Res, UpdateTaskBlocState>;
}

/// @nodoc
class _$UpdateTaskBlocStateCopyWithImpl<$Res, $Val extends UpdateTaskBlocState>
    implements $UpdateTaskBlocStateCopyWith<$Res> {
  _$UpdateTaskBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdateTaskInitialStateImplCopyWith<$Res> {
  factory _$$UpdateTaskInitialStateImplCopyWith(
          _$UpdateTaskInitialStateImpl value,
          $Res Function(_$UpdateTaskInitialStateImpl) then) =
      __$$UpdateTaskInitialStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskEntity? taskEntity});

  $TaskEntityCopyWith<$Res>? get taskEntity;
}

/// @nodoc
class __$$UpdateTaskInitialStateImplCopyWithImpl<$Res>
    extends _$UpdateTaskBlocStateCopyWithImpl<$Res,
        _$UpdateTaskInitialStateImpl>
    implements _$$UpdateTaskInitialStateImplCopyWith<$Res> {
  __$$UpdateTaskInitialStateImplCopyWithImpl(
      _$UpdateTaskInitialStateImpl _value,
      $Res Function(_$UpdateTaskInitialStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskEntity = freezed,
  }) {
    return _then(_$UpdateTaskInitialStateImpl(
      taskEntity: freezed == taskEntity
          ? _value.taskEntity
          : taskEntity // ignore: cast_nullable_to_non_nullable
              as TaskEntity?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskEntityCopyWith<$Res>? get taskEntity {
    if (_value.taskEntity == null) {
      return null;
    }

    return $TaskEntityCopyWith<$Res>(_value.taskEntity!, (value) {
      return _then(_value.copyWith(taskEntity: value));
    });
  }
}

/// @nodoc

class _$UpdateTaskInitialStateImpl implements UpdateTaskInitialState {
  const _$UpdateTaskInitialStateImpl({this.taskEntity});

  @override
  final TaskEntity? taskEntity;

  @override
  String toString() {
    return 'UpdateTaskBlocState.initial(taskEntity: $taskEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTaskInitialStateImpl &&
            (identical(other.taskEntity, taskEntity) ||
                other.taskEntity == taskEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTaskInitialStateImplCopyWith<_$UpdateTaskInitialStateImpl>
      get copyWith => __$$UpdateTaskInitialStateImplCopyWithImpl<
          _$UpdateTaskInitialStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskEntity? taskEntity) initial,
    required TResult Function() loading,
    required TResult Function() updated,
    required TResult Function(CustomFailure failure) error,
  }) {
    return initial(taskEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskEntity? taskEntity)? initial,
    TResult? Function()? loading,
    TResult? Function()? updated,
    TResult? Function(CustomFailure failure)? error,
  }) {
    return initial?.call(taskEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskEntity? taskEntity)? initial,
    TResult Function()? loading,
    TResult Function()? updated,
    TResult Function(CustomFailure failure)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(taskEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateTaskInitialState value) initial,
    required TResult Function(UpdateTaskLoadingState value) loading,
    required TResult Function(UpdateTaskUpdatedState value) updated,
    required TResult Function(UpdateTaskErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateTaskInitialState value)? initial,
    TResult? Function(UpdateTaskLoadingState value)? loading,
    TResult? Function(UpdateTaskUpdatedState value)? updated,
    TResult? Function(UpdateTaskErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateTaskInitialState value)? initial,
    TResult Function(UpdateTaskLoadingState value)? loading,
    TResult Function(UpdateTaskUpdatedState value)? updated,
    TResult Function(UpdateTaskErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class UpdateTaskInitialState implements UpdateTaskBlocState {
  const factory UpdateTaskInitialState({final TaskEntity? taskEntity}) =
      _$UpdateTaskInitialStateImpl;

  TaskEntity? get taskEntity;
  @JsonKey(ignore: true)
  _$$UpdateTaskInitialStateImplCopyWith<_$UpdateTaskInitialStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateTaskLoadingStateImplCopyWith<$Res> {
  factory _$$UpdateTaskLoadingStateImplCopyWith(
          _$UpdateTaskLoadingStateImpl value,
          $Res Function(_$UpdateTaskLoadingStateImpl) then) =
      __$$UpdateTaskLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateTaskLoadingStateImplCopyWithImpl<$Res>
    extends _$UpdateTaskBlocStateCopyWithImpl<$Res,
        _$UpdateTaskLoadingStateImpl>
    implements _$$UpdateTaskLoadingStateImplCopyWith<$Res> {
  __$$UpdateTaskLoadingStateImplCopyWithImpl(
      _$UpdateTaskLoadingStateImpl _value,
      $Res Function(_$UpdateTaskLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateTaskLoadingStateImpl implements UpdateTaskLoadingState {
  const _$UpdateTaskLoadingStateImpl();

  @override
  String toString() {
    return 'UpdateTaskBlocState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTaskLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskEntity? taskEntity) initial,
    required TResult Function() loading,
    required TResult Function() updated,
    required TResult Function(CustomFailure failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskEntity? taskEntity)? initial,
    TResult? Function()? loading,
    TResult? Function()? updated,
    TResult? Function(CustomFailure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskEntity? taskEntity)? initial,
    TResult Function()? loading,
    TResult Function()? updated,
    TResult Function(CustomFailure failure)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateTaskInitialState value) initial,
    required TResult Function(UpdateTaskLoadingState value) loading,
    required TResult Function(UpdateTaskUpdatedState value) updated,
    required TResult Function(UpdateTaskErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateTaskInitialState value)? initial,
    TResult? Function(UpdateTaskLoadingState value)? loading,
    TResult? Function(UpdateTaskUpdatedState value)? updated,
    TResult? Function(UpdateTaskErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateTaskInitialState value)? initial,
    TResult Function(UpdateTaskLoadingState value)? loading,
    TResult Function(UpdateTaskUpdatedState value)? updated,
    TResult Function(UpdateTaskErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class UpdateTaskLoadingState implements UpdateTaskBlocState {
  const factory UpdateTaskLoadingState() = _$UpdateTaskLoadingStateImpl;
}

/// @nodoc
abstract class _$$UpdateTaskUpdatedStateImplCopyWith<$Res> {
  factory _$$UpdateTaskUpdatedStateImplCopyWith(
          _$UpdateTaskUpdatedStateImpl value,
          $Res Function(_$UpdateTaskUpdatedStateImpl) then) =
      __$$UpdateTaskUpdatedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateTaskUpdatedStateImplCopyWithImpl<$Res>
    extends _$UpdateTaskBlocStateCopyWithImpl<$Res,
        _$UpdateTaskUpdatedStateImpl>
    implements _$$UpdateTaskUpdatedStateImplCopyWith<$Res> {
  __$$UpdateTaskUpdatedStateImplCopyWithImpl(
      _$UpdateTaskUpdatedStateImpl _value,
      $Res Function(_$UpdateTaskUpdatedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateTaskUpdatedStateImpl implements UpdateTaskUpdatedState {
  const _$UpdateTaskUpdatedStateImpl();

  @override
  String toString() {
    return 'UpdateTaskBlocState.updated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTaskUpdatedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskEntity? taskEntity) initial,
    required TResult Function() loading,
    required TResult Function() updated,
    required TResult Function(CustomFailure failure) error,
  }) {
    return updated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskEntity? taskEntity)? initial,
    TResult? Function()? loading,
    TResult? Function()? updated,
    TResult? Function(CustomFailure failure)? error,
  }) {
    return updated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskEntity? taskEntity)? initial,
    TResult Function()? loading,
    TResult Function()? updated,
    TResult Function(CustomFailure failure)? error,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateTaskInitialState value) initial,
    required TResult Function(UpdateTaskLoadingState value) loading,
    required TResult Function(UpdateTaskUpdatedState value) updated,
    required TResult Function(UpdateTaskErrorState value) error,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateTaskInitialState value)? initial,
    TResult? Function(UpdateTaskLoadingState value)? loading,
    TResult? Function(UpdateTaskUpdatedState value)? updated,
    TResult? Function(UpdateTaskErrorState value)? error,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateTaskInitialState value)? initial,
    TResult Function(UpdateTaskLoadingState value)? loading,
    TResult Function(UpdateTaskUpdatedState value)? updated,
    TResult Function(UpdateTaskErrorState value)? error,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class UpdateTaskUpdatedState implements UpdateTaskBlocState {
  const factory UpdateTaskUpdatedState() = _$UpdateTaskUpdatedStateImpl;
}

/// @nodoc
abstract class _$$UpdateTaskErrorStateImplCopyWith<$Res> {
  factory _$$UpdateTaskErrorStateImplCopyWith(_$UpdateTaskErrorStateImpl value,
          $Res Function(_$UpdateTaskErrorStateImpl) then) =
      __$$UpdateTaskErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CustomFailure failure});
}

/// @nodoc
class __$$UpdateTaskErrorStateImplCopyWithImpl<$Res>
    extends _$UpdateTaskBlocStateCopyWithImpl<$Res, _$UpdateTaskErrorStateImpl>
    implements _$$UpdateTaskErrorStateImplCopyWith<$Res> {
  __$$UpdateTaskErrorStateImplCopyWithImpl(_$UpdateTaskErrorStateImpl _value,
      $Res Function(_$UpdateTaskErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$UpdateTaskErrorStateImpl(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as CustomFailure,
    ));
  }
}

/// @nodoc

class _$UpdateTaskErrorStateImpl implements UpdateTaskErrorState {
  const _$UpdateTaskErrorStateImpl({required this.failure});

  @override
  final CustomFailure failure;

  @override
  String toString() {
    return 'UpdateTaskBlocState.error(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTaskErrorStateImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTaskErrorStateImplCopyWith<_$UpdateTaskErrorStateImpl>
      get copyWith =>
          __$$UpdateTaskErrorStateImplCopyWithImpl<_$UpdateTaskErrorStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskEntity? taskEntity) initial,
    required TResult Function() loading,
    required TResult Function() updated,
    required TResult Function(CustomFailure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskEntity? taskEntity)? initial,
    TResult? Function()? loading,
    TResult? Function()? updated,
    TResult? Function(CustomFailure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskEntity? taskEntity)? initial,
    TResult Function()? loading,
    TResult Function()? updated,
    TResult Function(CustomFailure failure)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateTaskInitialState value) initial,
    required TResult Function(UpdateTaskLoadingState value) loading,
    required TResult Function(UpdateTaskUpdatedState value) updated,
    required TResult Function(UpdateTaskErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateTaskInitialState value)? initial,
    TResult? Function(UpdateTaskLoadingState value)? loading,
    TResult? Function(UpdateTaskUpdatedState value)? updated,
    TResult? Function(UpdateTaskErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateTaskInitialState value)? initial,
    TResult Function(UpdateTaskLoadingState value)? loading,
    TResult Function(UpdateTaskUpdatedState value)? updated,
    TResult Function(UpdateTaskErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateTaskErrorState implements UpdateTaskBlocState {
  const factory UpdateTaskErrorState({required final CustomFailure failure}) =
      _$UpdateTaskErrorStateImpl;

  CustomFailure get failure;
  @JsonKey(ignore: true)
  _$$UpdateTaskErrorStateImplCopyWith<_$UpdateTaskErrorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
