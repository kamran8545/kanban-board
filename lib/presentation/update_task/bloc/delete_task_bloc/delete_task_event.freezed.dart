// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_task_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeleteTaskBlocEvent {
  String get taskId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String taskId) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String taskId)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String taskId)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeleteTaskDeleteEvent value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeleteTaskDeleteEvent value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeleteTaskDeleteEvent value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeleteTaskBlocEventCopyWith<DeleteTaskBlocEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteTaskBlocEventCopyWith<$Res> {
  factory $DeleteTaskBlocEventCopyWith(
          DeleteTaskBlocEvent value, $Res Function(DeleteTaskBlocEvent) then) =
      _$DeleteTaskBlocEventCopyWithImpl<$Res, DeleteTaskBlocEvent>;
  @useResult
  $Res call({String taskId});
}

/// @nodoc
class _$DeleteTaskBlocEventCopyWithImpl<$Res, $Val extends DeleteTaskBlocEvent>
    implements $DeleteTaskBlocEventCopyWith<$Res> {
  _$DeleteTaskBlocEventCopyWithImpl(this._value, this._then);

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
abstract class _$$DeleteTaskDeleteEventImplCopyWith<$Res>
    implements $DeleteTaskBlocEventCopyWith<$Res> {
  factory _$$DeleteTaskDeleteEventImplCopyWith(
          _$DeleteTaskDeleteEventImpl value,
          $Res Function(_$DeleteTaskDeleteEventImpl) then) =
      __$$DeleteTaskDeleteEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String taskId});
}

/// @nodoc
class __$$DeleteTaskDeleteEventImplCopyWithImpl<$Res>
    extends _$DeleteTaskBlocEventCopyWithImpl<$Res, _$DeleteTaskDeleteEventImpl>
    implements _$$DeleteTaskDeleteEventImplCopyWith<$Res> {
  __$$DeleteTaskDeleteEventImplCopyWithImpl(_$DeleteTaskDeleteEventImpl _value,
      $Res Function(_$DeleteTaskDeleteEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
  }) {
    return _then(_$DeleteTaskDeleteEventImpl(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteTaskDeleteEventImpl implements DeleteTaskDeleteEvent {
  const _$DeleteTaskDeleteEventImpl({required this.taskId});

  @override
  final String taskId;

  @override
  String toString() {
    return 'DeleteTaskBlocEvent.delete(taskId: $taskId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTaskDeleteEventImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteTaskDeleteEventImplCopyWith<_$DeleteTaskDeleteEventImpl>
      get copyWith => __$$DeleteTaskDeleteEventImplCopyWithImpl<
          _$DeleteTaskDeleteEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String taskId) delete,
  }) {
    return delete(taskId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String taskId)? delete,
  }) {
    return delete?.call(taskId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String taskId)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(taskId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeleteTaskDeleteEvent value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeleteTaskDeleteEvent value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeleteTaskDeleteEvent value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class DeleteTaskDeleteEvent implements DeleteTaskBlocEvent {
  const factory DeleteTaskDeleteEvent({required final String taskId}) =
      _$DeleteTaskDeleteEventImpl;

  @override
  String get taskId;
  @override
  @JsonKey(ignore: true)
  _$$DeleteTaskDeleteEventImplCopyWith<_$DeleteTaskDeleteEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
