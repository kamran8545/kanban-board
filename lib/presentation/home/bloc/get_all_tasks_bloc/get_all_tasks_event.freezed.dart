// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_all_tasks_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetAllTasksBlocEvent {
  String get projectId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String projectId) getAllTasks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String projectId)? getAllTasks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String projectId)? getAllTasks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllTasksEvent value) getAllTasks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllTasksEvent value)? getAllTasks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllTasksEvent value)? getAllTasks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetAllTasksBlocEventCopyWith<GetAllTasksBlocEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllTasksBlocEventCopyWith<$Res> {
  factory $GetAllTasksBlocEventCopyWith(GetAllTasksBlocEvent value,
          $Res Function(GetAllTasksBlocEvent) then) =
      _$GetAllTasksBlocEventCopyWithImpl<$Res, GetAllTasksBlocEvent>;
  @useResult
  $Res call({String projectId});
}

/// @nodoc
class _$GetAllTasksBlocEventCopyWithImpl<$Res,
        $Val extends GetAllTasksBlocEvent>
    implements $GetAllTasksBlocEventCopyWith<$Res> {
  _$GetAllTasksBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectId = null,
  }) {
    return _then(_value.copyWith(
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAllTasksEventImplCopyWith<$Res>
    implements $GetAllTasksBlocEventCopyWith<$Res> {
  factory _$$GetAllTasksEventImplCopyWith(_$GetAllTasksEventImpl value,
          $Res Function(_$GetAllTasksEventImpl) then) =
      __$$GetAllTasksEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String projectId});
}

/// @nodoc
class __$$GetAllTasksEventImplCopyWithImpl<$Res>
    extends _$GetAllTasksBlocEventCopyWithImpl<$Res, _$GetAllTasksEventImpl>
    implements _$$GetAllTasksEventImplCopyWith<$Res> {
  __$$GetAllTasksEventImplCopyWithImpl(_$GetAllTasksEventImpl _value,
      $Res Function(_$GetAllTasksEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectId = null,
  }) {
    return _then(_$GetAllTasksEventImpl(
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetAllTasksEventImpl implements GetAllTasksEvent {
  const _$GetAllTasksEventImpl({required this.projectId});

  @override
  final String projectId;

  @override
  String toString() {
    return 'GetAllTasksBlocEvent.getAllTasks(projectId: $projectId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllTasksEventImpl &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, projectId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllTasksEventImplCopyWith<_$GetAllTasksEventImpl> get copyWith =>
      __$$GetAllTasksEventImplCopyWithImpl<_$GetAllTasksEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String projectId) getAllTasks,
  }) {
    return getAllTasks(projectId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String projectId)? getAllTasks,
  }) {
    return getAllTasks?.call(projectId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String projectId)? getAllTasks,
    required TResult orElse(),
  }) {
    if (getAllTasks != null) {
      return getAllTasks(projectId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllTasksEvent value) getAllTasks,
  }) {
    return getAllTasks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllTasksEvent value)? getAllTasks,
  }) {
    return getAllTasks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllTasksEvent value)? getAllTasks,
    required TResult orElse(),
  }) {
    if (getAllTasks != null) {
      return getAllTasks(this);
    }
    return orElse();
  }
}

abstract class GetAllTasksEvent implements GetAllTasksBlocEvent {
  const factory GetAllTasksEvent({required final String projectId}) =
      _$GetAllTasksEventImpl;

  @override
  String get projectId;
  @override
  @JsonKey(ignore: true)
  _$$GetAllTasksEventImplCopyWith<_$GetAllTasksEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
