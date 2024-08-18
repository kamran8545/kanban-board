// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_task_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeleteTaskBlocState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? taskId) initial,
    required TResult Function() loading,
    required TResult Function() deleted,
    required TResult Function(CustomFailure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? taskId)? initial,
    TResult? Function()? loading,
    TResult? Function()? deleted,
    TResult? Function(CustomFailure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? taskId)? initial,
    TResult Function()? loading,
    TResult Function()? deleted,
    TResult Function(CustomFailure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeleteTaskInitialState value) initial,
    required TResult Function(DeleteTaskLoadingState value) loading,
    required TResult Function(DeleteTaskDeletedState value) deleted,
    required TResult Function(DeleteTaskErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeleteTaskInitialState value)? initial,
    TResult? Function(DeleteTaskLoadingState value)? loading,
    TResult? Function(DeleteTaskDeletedState value)? deleted,
    TResult? Function(DeleteTaskErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeleteTaskInitialState value)? initial,
    TResult Function(DeleteTaskLoadingState value)? loading,
    TResult Function(DeleteTaskDeletedState value)? deleted,
    TResult Function(DeleteTaskErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteTaskBlocStateCopyWith<$Res> {
  factory $DeleteTaskBlocStateCopyWith(
          DeleteTaskBlocState value, $Res Function(DeleteTaskBlocState) then) =
      _$DeleteTaskBlocStateCopyWithImpl<$Res, DeleteTaskBlocState>;
}

/// @nodoc
class _$DeleteTaskBlocStateCopyWithImpl<$Res, $Val extends DeleteTaskBlocState>
    implements $DeleteTaskBlocStateCopyWith<$Res> {
  _$DeleteTaskBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DeleteTaskInitialStateImplCopyWith<$Res> {
  factory _$$DeleteTaskInitialStateImplCopyWith(
          _$DeleteTaskInitialStateImpl value,
          $Res Function(_$DeleteTaskInitialStateImpl) then) =
      __$$DeleteTaskInitialStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? taskId});
}

/// @nodoc
class __$$DeleteTaskInitialStateImplCopyWithImpl<$Res>
    extends _$DeleteTaskBlocStateCopyWithImpl<$Res,
        _$DeleteTaskInitialStateImpl>
    implements _$$DeleteTaskInitialStateImplCopyWith<$Res> {
  __$$DeleteTaskInitialStateImplCopyWithImpl(
      _$DeleteTaskInitialStateImpl _value,
      $Res Function(_$DeleteTaskInitialStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = freezed,
  }) {
    return _then(_$DeleteTaskInitialStateImpl(
      taskId: freezed == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DeleteTaskInitialStateImpl implements DeleteTaskInitialState {
  const _$DeleteTaskInitialStateImpl({this.taskId});

  @override
  final String? taskId;

  @override
  String toString() {
    return 'DeleteTaskBlocState.initial(taskId: $taskId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTaskInitialStateImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteTaskInitialStateImplCopyWith<_$DeleteTaskInitialStateImpl>
      get copyWith => __$$DeleteTaskInitialStateImplCopyWithImpl<
          _$DeleteTaskInitialStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? taskId) initial,
    required TResult Function() loading,
    required TResult Function() deleted,
    required TResult Function(CustomFailure failure) error,
  }) {
    return initial(taskId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? taskId)? initial,
    TResult? Function()? loading,
    TResult? Function()? deleted,
    TResult? Function(CustomFailure failure)? error,
  }) {
    return initial?.call(taskId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? taskId)? initial,
    TResult Function()? loading,
    TResult Function()? deleted,
    TResult Function(CustomFailure failure)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(taskId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeleteTaskInitialState value) initial,
    required TResult Function(DeleteTaskLoadingState value) loading,
    required TResult Function(DeleteTaskDeletedState value) deleted,
    required TResult Function(DeleteTaskErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeleteTaskInitialState value)? initial,
    TResult? Function(DeleteTaskLoadingState value)? loading,
    TResult? Function(DeleteTaskDeletedState value)? deleted,
    TResult? Function(DeleteTaskErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeleteTaskInitialState value)? initial,
    TResult Function(DeleteTaskLoadingState value)? loading,
    TResult Function(DeleteTaskDeletedState value)? deleted,
    TResult Function(DeleteTaskErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class DeleteTaskInitialState implements DeleteTaskBlocState {
  const factory DeleteTaskInitialState({final String? taskId}) =
      _$DeleteTaskInitialStateImpl;

  String? get taskId;
  @JsonKey(ignore: true)
  _$$DeleteTaskInitialStateImplCopyWith<_$DeleteTaskInitialStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteTaskLoadingStateImplCopyWith<$Res> {
  factory _$$DeleteTaskLoadingStateImplCopyWith(
          _$DeleteTaskLoadingStateImpl value,
          $Res Function(_$DeleteTaskLoadingStateImpl) then) =
      __$$DeleteTaskLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteTaskLoadingStateImplCopyWithImpl<$Res>
    extends _$DeleteTaskBlocStateCopyWithImpl<$Res,
        _$DeleteTaskLoadingStateImpl>
    implements _$$DeleteTaskLoadingStateImplCopyWith<$Res> {
  __$$DeleteTaskLoadingStateImplCopyWithImpl(
      _$DeleteTaskLoadingStateImpl _value,
      $Res Function(_$DeleteTaskLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteTaskLoadingStateImpl implements DeleteTaskLoadingState {
  const _$DeleteTaskLoadingStateImpl();

  @override
  String toString() {
    return 'DeleteTaskBlocState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTaskLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? taskId) initial,
    required TResult Function() loading,
    required TResult Function() deleted,
    required TResult Function(CustomFailure failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? taskId)? initial,
    TResult? Function()? loading,
    TResult? Function()? deleted,
    TResult? Function(CustomFailure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? taskId)? initial,
    TResult Function()? loading,
    TResult Function()? deleted,
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
    required TResult Function(DeleteTaskInitialState value) initial,
    required TResult Function(DeleteTaskLoadingState value) loading,
    required TResult Function(DeleteTaskDeletedState value) deleted,
    required TResult Function(DeleteTaskErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeleteTaskInitialState value)? initial,
    TResult? Function(DeleteTaskLoadingState value)? loading,
    TResult? Function(DeleteTaskDeletedState value)? deleted,
    TResult? Function(DeleteTaskErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeleteTaskInitialState value)? initial,
    TResult Function(DeleteTaskLoadingState value)? loading,
    TResult Function(DeleteTaskDeletedState value)? deleted,
    TResult Function(DeleteTaskErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class DeleteTaskLoadingState implements DeleteTaskBlocState {
  const factory DeleteTaskLoadingState() = _$DeleteTaskLoadingStateImpl;
}

/// @nodoc
abstract class _$$DeleteTaskDeletedStateImplCopyWith<$Res> {
  factory _$$DeleteTaskDeletedStateImplCopyWith(
          _$DeleteTaskDeletedStateImpl value,
          $Res Function(_$DeleteTaskDeletedStateImpl) then) =
      __$$DeleteTaskDeletedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteTaskDeletedStateImplCopyWithImpl<$Res>
    extends _$DeleteTaskBlocStateCopyWithImpl<$Res,
        _$DeleteTaskDeletedStateImpl>
    implements _$$DeleteTaskDeletedStateImplCopyWith<$Res> {
  __$$DeleteTaskDeletedStateImplCopyWithImpl(
      _$DeleteTaskDeletedStateImpl _value,
      $Res Function(_$DeleteTaskDeletedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteTaskDeletedStateImpl implements DeleteTaskDeletedState {
  const _$DeleteTaskDeletedStateImpl();

  @override
  String toString() {
    return 'DeleteTaskBlocState.deleted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTaskDeletedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? taskId) initial,
    required TResult Function() loading,
    required TResult Function() deleted,
    required TResult Function(CustomFailure failure) error,
  }) {
    return deleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? taskId)? initial,
    TResult? Function()? loading,
    TResult? Function()? deleted,
    TResult? Function(CustomFailure failure)? error,
  }) {
    return deleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? taskId)? initial,
    TResult Function()? loading,
    TResult Function()? deleted,
    TResult Function(CustomFailure failure)? error,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeleteTaskInitialState value) initial,
    required TResult Function(DeleteTaskLoadingState value) loading,
    required TResult Function(DeleteTaskDeletedState value) deleted,
    required TResult Function(DeleteTaskErrorState value) error,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeleteTaskInitialState value)? initial,
    TResult? Function(DeleteTaskLoadingState value)? loading,
    TResult? Function(DeleteTaskDeletedState value)? deleted,
    TResult? Function(DeleteTaskErrorState value)? error,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeleteTaskInitialState value)? initial,
    TResult Function(DeleteTaskLoadingState value)? loading,
    TResult Function(DeleteTaskDeletedState value)? deleted,
    TResult Function(DeleteTaskErrorState value)? error,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class DeleteTaskDeletedState implements DeleteTaskBlocState {
  const factory DeleteTaskDeletedState() = _$DeleteTaskDeletedStateImpl;
}

/// @nodoc
abstract class _$$DeleteTaskErrorStateImplCopyWith<$Res> {
  factory _$$DeleteTaskErrorStateImplCopyWith(_$DeleteTaskErrorStateImpl value,
          $Res Function(_$DeleteTaskErrorStateImpl) then) =
      __$$DeleteTaskErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CustomFailure failure});
}

/// @nodoc
class __$$DeleteTaskErrorStateImplCopyWithImpl<$Res>
    extends _$DeleteTaskBlocStateCopyWithImpl<$Res, _$DeleteTaskErrorStateImpl>
    implements _$$DeleteTaskErrorStateImplCopyWith<$Res> {
  __$$DeleteTaskErrorStateImplCopyWithImpl(_$DeleteTaskErrorStateImpl _value,
      $Res Function(_$DeleteTaskErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$DeleteTaskErrorStateImpl(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as CustomFailure,
    ));
  }
}

/// @nodoc

class _$DeleteTaskErrorStateImpl implements DeleteTaskErrorState {
  const _$DeleteTaskErrorStateImpl({required this.failure});

  @override
  final CustomFailure failure;

  @override
  String toString() {
    return 'DeleteTaskBlocState.error(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTaskErrorStateImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteTaskErrorStateImplCopyWith<_$DeleteTaskErrorStateImpl>
      get copyWith =>
          __$$DeleteTaskErrorStateImplCopyWithImpl<_$DeleteTaskErrorStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? taskId) initial,
    required TResult Function() loading,
    required TResult Function() deleted,
    required TResult Function(CustomFailure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? taskId)? initial,
    TResult? Function()? loading,
    TResult? Function()? deleted,
    TResult? Function(CustomFailure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? taskId)? initial,
    TResult Function()? loading,
    TResult Function()? deleted,
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
    required TResult Function(DeleteTaskInitialState value) initial,
    required TResult Function(DeleteTaskLoadingState value) loading,
    required TResult Function(DeleteTaskDeletedState value) deleted,
    required TResult Function(DeleteTaskErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeleteTaskInitialState value)? initial,
    TResult? Function(DeleteTaskLoadingState value)? loading,
    TResult? Function(DeleteTaskDeletedState value)? deleted,
    TResult? Function(DeleteTaskErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeleteTaskInitialState value)? initial,
    TResult Function(DeleteTaskLoadingState value)? loading,
    TResult Function(DeleteTaskDeletedState value)? deleted,
    TResult Function(DeleteTaskErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class DeleteTaskErrorState implements DeleteTaskBlocState {
  const factory DeleteTaskErrorState({required final CustomFailure failure}) =
      _$DeleteTaskErrorStateImpl;

  CustomFailure get failure;
  @JsonKey(ignore: true)
  _$$DeleteTaskErrorStateImplCopyWith<_$DeleteTaskErrorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
