// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_task_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateTasksBlocState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() created,
    required TResult Function(CustomFailure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? created,
    TResult? Function(CustomFailure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? created,
    TResult Function(CustomFailure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateTaskInitialState value) initial,
    required TResult Function(CreateTaskLoadingState value) loading,
    required TResult Function(CreateTaskCreatedState value) created,
    required TResult Function(CreateTaskErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateTaskInitialState value)? initial,
    TResult? Function(CreateTaskLoadingState value)? loading,
    TResult? Function(CreateTaskCreatedState value)? created,
    TResult? Function(CreateTaskErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateTaskInitialState value)? initial,
    TResult Function(CreateTaskLoadingState value)? loading,
    TResult Function(CreateTaskCreatedState value)? created,
    TResult Function(CreateTaskErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTasksBlocStateCopyWith<$Res> {
  factory $CreateTasksBlocStateCopyWith(CreateTasksBlocState value,
          $Res Function(CreateTasksBlocState) then) =
      _$CreateTasksBlocStateCopyWithImpl<$Res, CreateTasksBlocState>;
}

/// @nodoc
class _$CreateTasksBlocStateCopyWithImpl<$Res,
        $Val extends CreateTasksBlocState>
    implements $CreateTasksBlocStateCopyWith<$Res> {
  _$CreateTasksBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreateTaskInitialStateImplCopyWith<$Res> {
  factory _$$CreateTaskInitialStateImplCopyWith(
          _$CreateTaskInitialStateImpl value,
          $Res Function(_$CreateTaskInitialStateImpl) then) =
      __$$CreateTaskInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateTaskInitialStateImplCopyWithImpl<$Res>
    extends _$CreateTasksBlocStateCopyWithImpl<$Res,
        _$CreateTaskInitialStateImpl>
    implements _$$CreateTaskInitialStateImplCopyWith<$Res> {
  __$$CreateTaskInitialStateImplCopyWithImpl(
      _$CreateTaskInitialStateImpl _value,
      $Res Function(_$CreateTaskInitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreateTaskInitialStateImpl implements CreateTaskInitialState {
  const _$CreateTaskInitialStateImpl();

  @override
  String toString() {
    return 'CreateTasksBlocState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTaskInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() created,
    required TResult Function(CustomFailure failure) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? created,
    TResult? Function(CustomFailure failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? created,
    TResult Function(CustomFailure failure)? error,
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
    required TResult Function(CreateTaskInitialState value) initial,
    required TResult Function(CreateTaskLoadingState value) loading,
    required TResult Function(CreateTaskCreatedState value) created,
    required TResult Function(CreateTaskErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateTaskInitialState value)? initial,
    TResult? Function(CreateTaskLoadingState value)? loading,
    TResult? Function(CreateTaskCreatedState value)? created,
    TResult? Function(CreateTaskErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateTaskInitialState value)? initial,
    TResult Function(CreateTaskLoadingState value)? loading,
    TResult Function(CreateTaskCreatedState value)? created,
    TResult Function(CreateTaskErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CreateTaskInitialState implements CreateTasksBlocState {
  const factory CreateTaskInitialState() = _$CreateTaskInitialStateImpl;
}

/// @nodoc
abstract class _$$CreateTaskLoadingStateImplCopyWith<$Res> {
  factory _$$CreateTaskLoadingStateImplCopyWith(
          _$CreateTaskLoadingStateImpl value,
          $Res Function(_$CreateTaskLoadingStateImpl) then) =
      __$$CreateTaskLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateTaskLoadingStateImplCopyWithImpl<$Res>
    extends _$CreateTasksBlocStateCopyWithImpl<$Res,
        _$CreateTaskLoadingStateImpl>
    implements _$$CreateTaskLoadingStateImplCopyWith<$Res> {
  __$$CreateTaskLoadingStateImplCopyWithImpl(
      _$CreateTaskLoadingStateImpl _value,
      $Res Function(_$CreateTaskLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreateTaskLoadingStateImpl implements CreateTaskLoadingState {
  const _$CreateTaskLoadingStateImpl();

  @override
  String toString() {
    return 'CreateTasksBlocState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTaskLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() created,
    required TResult Function(CustomFailure failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? created,
    TResult? Function(CustomFailure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? created,
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
    required TResult Function(CreateTaskInitialState value) initial,
    required TResult Function(CreateTaskLoadingState value) loading,
    required TResult Function(CreateTaskCreatedState value) created,
    required TResult Function(CreateTaskErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateTaskInitialState value)? initial,
    TResult? Function(CreateTaskLoadingState value)? loading,
    TResult? Function(CreateTaskCreatedState value)? created,
    TResult? Function(CreateTaskErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateTaskInitialState value)? initial,
    TResult Function(CreateTaskLoadingState value)? loading,
    TResult Function(CreateTaskCreatedState value)? created,
    TResult Function(CreateTaskErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CreateTaskLoadingState implements CreateTasksBlocState {
  const factory CreateTaskLoadingState() = _$CreateTaskLoadingStateImpl;
}

/// @nodoc
abstract class _$$CreateTaskCreatedStateImplCopyWith<$Res> {
  factory _$$CreateTaskCreatedStateImplCopyWith(
          _$CreateTaskCreatedStateImpl value,
          $Res Function(_$CreateTaskCreatedStateImpl) then) =
      __$$CreateTaskCreatedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateTaskCreatedStateImplCopyWithImpl<$Res>
    extends _$CreateTasksBlocStateCopyWithImpl<$Res,
        _$CreateTaskCreatedStateImpl>
    implements _$$CreateTaskCreatedStateImplCopyWith<$Res> {
  __$$CreateTaskCreatedStateImplCopyWithImpl(
      _$CreateTaskCreatedStateImpl _value,
      $Res Function(_$CreateTaskCreatedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreateTaskCreatedStateImpl implements CreateTaskCreatedState {
  const _$CreateTaskCreatedStateImpl();

  @override
  String toString() {
    return 'CreateTasksBlocState.created()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTaskCreatedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() created,
    required TResult Function(CustomFailure failure) error,
  }) {
    return created();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? created,
    TResult? Function(CustomFailure failure)? error,
  }) {
    return created?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? created,
    TResult Function(CustomFailure failure)? error,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateTaskInitialState value) initial,
    required TResult Function(CreateTaskLoadingState value) loading,
    required TResult Function(CreateTaskCreatedState value) created,
    required TResult Function(CreateTaskErrorState value) error,
  }) {
    return created(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateTaskInitialState value)? initial,
    TResult? Function(CreateTaskLoadingState value)? loading,
    TResult? Function(CreateTaskCreatedState value)? created,
    TResult? Function(CreateTaskErrorState value)? error,
  }) {
    return created?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateTaskInitialState value)? initial,
    TResult Function(CreateTaskLoadingState value)? loading,
    TResult Function(CreateTaskCreatedState value)? created,
    TResult Function(CreateTaskErrorState value)? error,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(this);
    }
    return orElse();
  }
}

abstract class CreateTaskCreatedState implements CreateTasksBlocState {
  const factory CreateTaskCreatedState() = _$CreateTaskCreatedStateImpl;
}

/// @nodoc
abstract class _$$CreateTaskErrorStateImplCopyWith<$Res> {
  factory _$$CreateTaskErrorStateImplCopyWith(_$CreateTaskErrorStateImpl value,
          $Res Function(_$CreateTaskErrorStateImpl) then) =
      __$$CreateTaskErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CustomFailure failure});
}

/// @nodoc
class __$$CreateTaskErrorStateImplCopyWithImpl<$Res>
    extends _$CreateTasksBlocStateCopyWithImpl<$Res, _$CreateTaskErrorStateImpl>
    implements _$$CreateTaskErrorStateImplCopyWith<$Res> {
  __$$CreateTaskErrorStateImplCopyWithImpl(_$CreateTaskErrorStateImpl _value,
      $Res Function(_$CreateTaskErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$CreateTaskErrorStateImpl(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as CustomFailure,
    ));
  }
}

/// @nodoc

class _$CreateTaskErrorStateImpl implements CreateTaskErrorState {
  const _$CreateTaskErrorStateImpl({required this.failure});

  @override
  final CustomFailure failure;

  @override
  String toString() {
    return 'CreateTasksBlocState.error(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTaskErrorStateImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTaskErrorStateImplCopyWith<_$CreateTaskErrorStateImpl>
      get copyWith =>
          __$$CreateTaskErrorStateImplCopyWithImpl<_$CreateTaskErrorStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() created,
    required TResult Function(CustomFailure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? created,
    TResult? Function(CustomFailure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? created,
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
    required TResult Function(CreateTaskInitialState value) initial,
    required TResult Function(CreateTaskLoadingState value) loading,
    required TResult Function(CreateTaskCreatedState value) created,
    required TResult Function(CreateTaskErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateTaskInitialState value)? initial,
    TResult? Function(CreateTaskLoadingState value)? loading,
    TResult? Function(CreateTaskCreatedState value)? created,
    TResult? Function(CreateTaskErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateTaskInitialState value)? initial,
    TResult Function(CreateTaskLoadingState value)? loading,
    TResult Function(CreateTaskCreatedState value)? created,
    TResult Function(CreateTaskErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CreateTaskErrorState implements CreateTasksBlocState {
  const factory CreateTaskErrorState({required final CustomFailure failure}) =
      _$CreateTaskErrorStateImpl;

  CustomFailure get failure;
  @JsonKey(ignore: true)
  _$$CreateTaskErrorStateImplCopyWith<_$CreateTaskErrorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
